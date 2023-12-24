import 'dart:io';

import 'package:first_app/layout/customerAppBar.dart';
import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'dart:developer';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:file_picker/file_picker.dart';

class AdminGiziShopCu extends StatefulWidget {
  const AdminGiziShopCu({Key? key}) : super(key: key);
  static Route<void> route() {
    return MaterialPageRoute(builder: (context) => AdminGiziShopCu());
  }

  @override
  State<StatefulWidget> createState() {
    return _AdminGiziShopCu();
  }
}

class _AdminGiziShopCu extends State<AdminGiziShopCu> {
  String titleu = "Tambah Produk";
  String typeu = "add";
  var argetc;
  int _selectedIndex = 0;
  bool _validateNama = false;
  TextEditingController namaController = TextEditingController();
  TextEditingController a1 = TextEditingController();
  TextEditingController a2 = TextEditingController();
  TextEditingController a3 = TextEditingController();
  TextEditingController a4 = TextEditingController();
  TextEditingController a5 = TextEditingController();
  TextEditingController a6 = TextEditingController();
  TextEditingController a7 = TextEditingController();
  TextEditingController a8 = TextEditingController();
  TextEditingController a9 = TextEditingController();
  TextEditingController a10 = TextEditingController();
  TextEditingController a11 = TextEditingController();
  TextEditingController a12 = TextEditingController();
  TextEditingController a13 = TextEditingController();
  TextEditingController a14 = TextEditingController();
  TextEditingController a15 = TextEditingController();
  TextEditingController a16 = TextEditingController();
  TextEditingController a17 = TextEditingController();
  TextEditingController a18 = TextEditingController();
  TextEditingController a19 = TextEditingController();
  TextEditingController a20 = TextEditingController();
  TextEditingController a21 = TextEditingController();
  TextEditingController a22 = TextEditingController();
  TextEditingController a23 = TextEditingController();
  TextEditingController a24 = TextEditingController();
  String imagesPath = "";
  String name = "";
  var arrgg = 0;

  Future saveProcess() async {
    var text = "";
    final data = await supabase.from('nutrishop_produk').upsert({
      "id": argetc['id'],
      "a1": a1.text,
      "a2": a2.text,
      "a3": a3.text,
      "a4": a4.text,
      "a5": a5.text,
      "a6": a6.text,
      "a7": a7.text,
      "a8": a8.text,
      "a9": a9.text,
      "a10": a10.text,
      "a11": a11.text,
      "a12": a12.text,
      "a13": a13.text,
      "a14": a14.text,
      "a15": a15.text,
      "a16": a16.text,
      "a17": a17.text,
      "a18": a18.text,
      "a19": a19.text,
      "a20": a20.text,
      "a21": a21.text,
      "a22": a22.text,
      "a23": a23.text,
      "a24": a24.text,
      //"user_id": argetc['user_id'],
    });
    text = 'Sukses disimpan';
    Fluttertoast.showToast(
      msg: text,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
    );
    Navigator.pop(context);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments;
    titleu = "Tambah Data Gizi";
    var args = arg as Map;
    typeu = "edit";
    argetc = args;
    if (arrgg == 0) {
      namaController.text = args['nama'];
      a1.text = args['a1'];
      a2.text = args['a2'];
      a3.text = args['a3'];
      a4.text = args['a4'];
      a5.text = args['a5'];
      a6.text = args['a6'];
      a7.text = args['a7'];
      a8.text = args['a8'];
      a9.text = args['a9'];
      a10.text = args['a10'];
      a11.text = args['a11'];
      a12.text = args['a12'];
      a13.text = args['a13'];
      a14.text = args['a14'];
      a15.text = args['a15'];
      a16.text = args['a16'];
      a17.text = args['a17'];
      a18.text = args['a18'];
      a19.text = args['a19'];
      a20.text = args['a20'];
      a21.text = args['a21'];
      a22.text = args['a22'];
      a23.text = args['a23'];
      a24.text = args['a24'];
      arrgg += 1;
    }

    log("$arg");
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF2B9EA4),
      appBar: LayoutCustomerAppBar(
          title: Text(titleu,
              style: const TextStyle(
                fontSize: 24,
                color: Color(0xFF2B9EA4),
              ))),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          /*decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Colors.purpleAccent,
                Colors.amber,
                Colors.blue,
              ])),*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 325,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20.0, left: 30.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a1,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Energy",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10.0, left: 10.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a2,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Water",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20.0, left: 30.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a3,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Energy",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10.0, left: 10.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a4,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Nama",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20.0, left: 30.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a5,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Energy",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10.0, left: 10.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a6,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Nama",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20.0, left: 30.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a7,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Energy",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10.0, left: 10.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a8,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Nama",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20.0, left: 30.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a9,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Energy",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10.0, left: 10.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a10,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Nama",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20.0, left: 30.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a11,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Energy",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10.0, left: 10.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a12,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Nama",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20.0, left: 30.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a13,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Energy",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10.0, left: 10.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a14,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Nama",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20.0, left: 30.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a15,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Energy",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10.0, left: 10.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a16,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Nama",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20.0, left: 30.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a17,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Energy",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10.0, left: 10.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a18,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Nama",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20.0, left: 30.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a19,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Energy",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10.0, left: 10.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a20,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Nama",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20.0, left: 30.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a21,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Energy",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10.0, left: 10.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a22,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Nama",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20.0, left: 30.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a23,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Energy",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10.0, left: 10.0),
                        width: 120,
                        height: 60,
                        child: TextField(
                          controller: a24,
                          style: const TextStyle(color: Color(0xFF2B9EA4)),
                          decoration: const InputDecoration(
                            /*suffix: Icon(
                            FontAwesomeIcons.envelope,
                            color: Colors.red,
                          ),*/
                            labelText: "Nama",
                            labelStyle: TextStyle(color: Color(0xFF2B9EA4)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2B9EA4)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      alignment: Alignment.center,
                      width: 250,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Color(0xFF2B9EA4),
                      ),
                      child: TextButton(
                        onPressed: () {
                          saveProcess();
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'Simpan',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
