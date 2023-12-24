import 'package:first_app/customer/calculation/component/card_content.dart';
import 'package:first_app/customer/calculation/component/currency_format.dart';
import 'package:first_app/customer/calculation/controller/activity_controller.dart';
import 'package:first_app/customer/calculation/controller/calorie_controller.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:first_app/HomePage.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:first_app/main.dart';
import 'dart:developer';

class HistoryCalorie extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HistoryCalorie();
  }
}

class _HistoryCalorie extends State<HistoryCalorie> {
  final activityController = Get.find<ActivityController>();
  final calorieController = Get.find<CalorieController>();
  DateTime _selectedValue = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final _future = supabase
        .from('kalori_customer')
        .select()
        .eq('user_id', calorieController.uidUser.value)
        .order('created_at', ascending: true);

    return Scaffold(
        backgroundColor: Color(0xFFC9DEDF),
        appBar: AppBar(
          title: Text(
            "History Calorie",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2B9EA4)),
          ),
          leadingWidth: 50,
          leading: Container(
            margin: const EdgeInsets.only(left: 10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child:
                  Icon(Icons.arrow_back, color: Color(0xFFF1CA1AC), size: 25),
            ),
          ),
          backgroundColor: Colors.white, //You can make this transparent
          elevation: 0.0, //No shadow
        ),
        body: SingleChildScrollView(
          child: Container(
            child: FutureBuilder(
                future: _future,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  final datz = snapshot.data!;
                  log("$datz");
                  //return Text('');
                  return ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: datz.length,
                      itemBuilder: (context, index) {
                        final dazz = datz[index];
                        var parts = dazz['created_at'].split('T');
                        var prefix = parts[0].trim();
                        var timee = parts.sublist(1).join(':').trim();
                        timee = timee.split('.');
                        timee = timee[0].trim();

                        var dateValue = DateFormat('yyy-MM-ddTHH:mmZ')
                            .parseUTC(dazz['created_at'])
                            .toLocal();

                        String formattedDate =
                            DateFormat("dd MMM yyyy").format(dateValue);

                        return Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 7),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          width: 325,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                            border: Border.all(color: Color(0xFF2B9EA4)),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF2B9EA4)
                                    .withOpacity(0.5), // Warna bayangan
                                spreadRadius:
                                    1, // Seberapa besar bayangan tersebar
                                blurRadius: 7, // Seberapa kabur bayangan
                                offset: Offset(
                                    0, 2), // Offset bayangan dari container
                              ),
                            ],
                          ),
                          child: ListTile(
                            visualDensity:
                                VisualDensity(horizontal: 0, vertical: -4),
                            dense: true,
                            leading: Text(
                              "${index + 1}",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            title: Text(
                              "Kalori Harian",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            subtitle: Text(
                              "${dazz['kalori_harian']} kkal",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFFF1CA1AC)),
                            ),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Kebutuhan Kalori'),
                                    content: Container(
                                      height: 350,
                                      child: Column(
                                        children: [
                                          CardContent(
                                            title: "Kebutuhan Kalori Harian :",
                                            content:
                                                "${dazz['kalori_harian']} kkal",
                                          ),
                                          CardContent(
                                            title:
                                                "Kebutuhan Karbohidrat Harian :",
                                            content:
                                                "${dazz['karbohidrat']} gram",
                                          ),
                                          CardContent(
                                            title: "Kebutuhan Protein Harian :",
                                            content:
                                                "${dazz['protein']} gram",
                                          ),
                                          CardContent(
                                            title: "Kebutuhan Lemak Harian :",
                                            content:
                                                "${dazz['lemak']} gram",
                                          ),
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pop(); // Tutup modal dialog
                                        },
                                        child: Text('Tutup'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            trailing: Column(
                              children: [
                                Text(
                                  "${formattedDate}",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFF2B9EA4)),
                                ),
                                Text(
                                  "${timee}",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                }),
          ),
        ));
  }
}
