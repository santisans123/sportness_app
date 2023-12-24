import 'package:first_app/customer/calculation/component/card_content.dart';
import 'package:first_app/customer/calculation/component/currency_format.dart';
import 'package:first_app/customer/calculation/controller/activity_controller.dart';
import 'package:first_app/customer/calculation/controller/calorie_controller.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:first_app/HomePage.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:first_app/main.dart';
import 'dart:developer';

class ResultCalculate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ResultCalculate();
  }
}

class _ResultCalculate extends State<ResultCalculate> {
  final activityController = Get.find<ActivityController>();
  final calorieController = Get.find<CalorieController>();

  Future saveProcess() async {
    await supabase.from('kalori_customer').insert({
      "kalori_harian":
          CurrencyFormat.convertToIdr(activityController.dailyCalorie.value, 2),
      "karbohidrat":
          CurrencyFormat.convertToIdr(activityController.carboSum.value, 2),
      "protein":
          CurrencyFormat.convertToIdr(activityController.proteinSum.value, 2),
      "lemak": CurrencyFormat.convertToIdr(activityController.fatSum.value, 2),
      "user_id": calorieController.uidUser.value,
    });
    Fluttertoast.showToast(
      msg: 'Sukses menyimpan data',
      backgroundColor: Colors.green,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
    );
    Navigator.pushNamed(context, '/history_calorie');
  }

  @override
  void initState() {
    super.initState();
    log("sans");
  }

  @override
  Widget build(BuildContext context) {
    final activityController = Get.find<ActivityController>();

    return Scaffold(
      backgroundColor: Color(0xFFC9DEDF),
      appBar: AppBar(
        title: Text(
          "Hasil Perhitungan",
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
            child: Icon(Icons.arrow_back, color: Color(0xFFF1CA1AC), size: 25),
          ),
        ),
        backgroundColor: Colors.white, //You can make this transparent
        elevation: 0.0, //No shadow
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
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
              CardContent(
                title: "Kebutuhan Kalori Harian :",
                content:
                    "${CurrencyFormat.convertToIdr(activityController.dailyCalorie.value, 2)} kkal",
              ),
              CardContent(
                title: "Kebutuhan Karbohidrat Harian :",
                content:
                    "${CurrencyFormat.convertToIdr(activityController.carboSum.value, 2)} gram",
              ),
              CardContent(
                title: "Kebutuhan Protein Harian :",
                content:
                    "${CurrencyFormat.convertToIdr(activityController.proteinSum.value, 2)} gram",
              ),
              CardContent(
                title: "Kebutuhan Lemak Harian :",
                content:
                    "${CurrencyFormat.convertToIdr(activityController.fatSum.value, 2)} gram",
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      alignment: Alignment.center,
                      width: 150,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Color(0xFFEA2424),
                      ),
                      child: TextButton(
                        onPressed: () {
                          activityController.af.value = "";
                          activityController.af2.value = "";
                          activityController.af3.value = "";
                          activityController.afSum.value = 0;
                          activityController.btn1.value = false;
                          activityController.btn2.value = false;
                          activityController.btn3.value = false;
                          activityController.carboSum.value = 0;
                          activityController.dailyCalorie.value = 0;
                          activityController.dailyCalorie.value = 0;
                          activityController.dropdownFrequency.value = "1";
                          activityController.dropdownFrequency2.value = "1";
                          activityController.dropdownFrequency3.value = "1";
                          activityController.dropdownorvalue.value = "Balap Sepeda";
                          activityController.dropdownorvalue2.value = "Balap Sepeda";
                          activityController.dropdownorvalue3.value = "Balap Sepeda";
                          activityController.dura.value = 0;
                          activityController.dura2.value = 0;
                          activityController.dura3.value = 0;
                          activityController.fatSum.value = 0;
                          activityController.kelSum.value = 0;
                          activityController.kelSum2.value = 0;
                          activityController.kelSum3.value = 0;
                          activityController.proteinSum.value = 0;
                          activityController.sdaSum.value = 0;
                          activityController.sumTot.value = 0;

                          Navigator.pushNamed(context, '/activity_form');
                        },
                        child: Text(
                          'Hapus',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      alignment: Alignment.center,
                      width: 150,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Color(0xFFF1CA1AC),
                      ),
                      child: TextButton(
                        onPressed: () {
                          saveProcess();
                        },
                        child: Text(
                          'Simpan',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
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
