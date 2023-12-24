import 'package:first_app/layout/customerAppBar.dart';
import 'package:first_app/layout/customerBottomNav.dart';
import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'dart:developer';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:strintcurrency/strintcurrency.dart';

class NutrishopPesananDetail extends StatefulWidget {
  @override
  State<NutrishopPesananDetail> createState() => _NutrishopPesananDetail();
}

class _NutrishopPesananDetail extends State<NutrishopPesananDetail> {
  onGoBack(dynamic value) {
    setState(() {
      _NutrishopPesananDetail();
    });
  }

  Future<List> getUserNamePref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return [
      prefs.getString('usernama') ?? 'K',
      prefs.getString('email') ?? 'K',
      prefs.getBool('active') ?? false,
      prefs.getInt('userid') ?? 0
    ];
  }

  @override
  void initState() {
    super.initState();
  }

  terimaProcess(idtoko, idcart, idtrans) async {
    for (var idcartz in idcart) {
      await supabase
          .from('cart')
          .update({'status': 'process'}).match({'id': idcartz});
    }
    await supabase.from('transaction').update(
        {'status': 'process', 'statusdriver': 'cari'}).match({'id': idtrans});
    /*await supabase
        .from('transaction_process')
        .insert({'sid': idtoko, 'idcart': idcart});
    await supabase.from('transaction').delete().match({'id': idtrans});*/
    Fluttertoast.showToast(
      msg: 'Pesanan diterima',
      backgroundColor: Colors.green,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
    );
  }

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    final tid = arg["tid"];
    final idcart = arg["idcart"];
    log("$idcart");
    final int uid = arg["uid"];
    final status = arg["status"];

    final datacart = supabase
        .from('cart')
        .select('id, jumlah, status, nutrishop_produk(id, nama,harga)')
        .in_('id', idcart);
    return FutureBuilder(
        future: datacart,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final countries = snapshot.data!;
          return Scaffold(
            backgroundColor: Color(0xFF2B9EA4),
            appBar: const LayoutCustomerAppBar(
                title: Text('Detail Pesanan',
                    style: TextStyle(
                      fontSize: 34,
                      color: Color(0xFF2B9EA4),
                    ))),
            body: Column(children: [
              Expanded(
                child: ListView.builder(
                  itemCount: countries.length,
                  itemBuilder: ((context, index) {
                    final country = countries[index];
                    final produk = country['nutrishop_produk'];
                    var jumlah = country['jumlah'];
                    var harga = int.parse(produk['harga']);
                    int total = jumlah * harga;
                    countries[index]['total'] = total;
                    var totalStr = total.toString();
                    final strintcurrency = StrIntCurrency();
                    /*final harga2 = strintcurrency.intToStringID(
                              produk['harga'],
                              symbol: false); */ // it returns "2,000,00"
                    //final jsona = json.encode(country['produks']);
                    //log("${jsona[0]}");
                    return Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 2.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: const Icon(
                              Icons.account_circle,
                              size: 50,
                              color: Color(0xFF2B9EA4),
                            ),
                            title: RichText(
                              selectionColor: Color(0xFF2B9EA4),
                              text: TextSpan(
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF2B9EA4)),
                                children: [
                                  TextSpan(text: "Nama : ${produk['nama']}"),
                                ],
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("@Harga : ${produk['harga']}"),
                                Text("Jumlah : ${country['jumlah']}"),
                              ],
                            ),
                            onTap: () {},
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(totalStr,
                                    style: TextStyle(
                                      color: Color(0xFF2B9EA4),
                                      fontSize: 20,
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ]),
            bottomNavigationBar: BottomAppBar(
              child: Container(
                height: 150,
                child: Column(
                  children: <Widget>[
                    if (status == 'waiting') ...[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            // The width will be 100% of the parent widget
                            // The height will be 60
                            backgroundColor: Colors.white,
                            minimumSize: const Size.fromHeight(60)),
                        onPressed: () {
                          terimaProcess(uid, idcart, tid);

                          Navigator.pop(context);
                        },
                        child: const Text("Terima",
                            style: TextStyle(
                              color: Color(0xFF2B9EA4),
                              fontSize: 30,
                            )),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          );
        });
  }
}
