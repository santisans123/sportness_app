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

class CalorieForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CalorieForm();
  }
}

class _CalorieForm extends State<CalorieForm> {
  final calorieController = Get.find<CalorieController>();
  final activityController = Get.find<ActivityController>();

  TextEditingController ageController = TextEditingController();
  TextEditingController bbController = TextEditingController();
  TextEditingController tbController = TextEditingController();
  var cabora;

  String dropdownvalue = '1';

  String dropdowngender = 'laki-laki';

  final _futurex = supabase.from('cabang_olahraga').select();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC9DEDF),
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Perhitungan IMT",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2B9EA4)),
            ),
            Spacer(),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/history_calorie');
                },
                child: Icon(Icons.history, color: Color(0xFFF1CA1AC), size: 25)
              )
          ],
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
          margin: const EdgeInsets.only(top: 30.0),
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
              Container(
                width: 325,
                decoration: const BoxDecoration(
                  color: Color(0xFFFBFBFB),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 260,
                      height: 60,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: ageController,
                        style: TextStyle(color: Color(0xFFF1CA1AC)),
                        decoration: const InputDecoration(
                          /*suffix: Icon(
                            FontAwesomeIcons.eyeSlash,
                            color: Colors.red,
                          ),*/
                          labelText: "Usia",
                          labelStyle: TextStyle(color: Color(0xFFF1CA1AC)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFF1CA1AC)),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFF1CA1AC)),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: 260,
                      height: 60,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: bbController,
                        style: TextStyle(color: Color(0xFFF1CA1AC)),
                        decoration: const InputDecoration(
                          /*suffix: Icon(
                            FontAwesomeIcons.eyeSlash,
                            color: Colors.red,
                          ),*/
                          labelText: "Berat Badan (kg)",
                          labelStyle: TextStyle(color: Color(0xFFF1CA1AC)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFF1CA1AC)),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFF1CA1AC)),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: 260,
                      height: 60,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: tbController,
                        style: TextStyle(color: Color(0xFFF1CA1AC)),
                        decoration: const InputDecoration(
                          /*suffix: Icon(
                            FontAwesomeIcons.eyeSlash,
                            color: Colors.red,
                          ),*/
                          labelText: "Tinggi Badan (cm)",
                          labelStyle: TextStyle(color: Color(0xFFF1CA1AC)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFF1CA1AC)),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFF1CA1AC)),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: 260,
                      height: 60,
                      child: DropdownButton<String>(
                        dropdownColor: Colors.white,
                        isExpanded: true,
                        iconEnabledColor: Color(0xFFF1CA1AC),
                        underline: Container(
                          width: 200,
                          height: 1,
                          color: Color(0xFFF1CA1AC),
                        ),
                        value: dropdowngender,
                        icon: Icon(Icons.keyboard_arrow_down,
                            color: Color(0xFFF1CA1AC)),
                        items: <DropdownMenuItem<String>>[
                          DropdownMenuItem<String>(
                            value: 'laki-laki',
                            child: Text(
                              'Laki-laki',
                              style: TextStyle(
                                color: Color(0xFFF1CA1AC),
                              ),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: 'perempuan',
                            child: Text(
                              'Perempuan',
                              style: TextStyle(
                                color: Color(0xFFF1CA1AC),
                              ),
                            ),
                          ),
                        ],
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdowngender = newValue!;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    // FutureBuilder(
                    //     future: _futurex,
                    //     builder: (context, snapshot) {
                    //       if (!snapshot.hasData) {
                    //         return const Center(
                    //             child: CircularProgressIndicator());
                    //       }
                    //       final dat = snapshot.data!;
                    //       log("zz ${dropdownvalue}");

                    //       return Container(
                    //         width: 260,
                    //         height: 60,
                    //         child: DropdownButton(
                    //           dropdownColor: Colors.white,
                    //           isExpanded: true,
                    //           iconEnabledColor: Color(0xFFF1CA1AC),
                    //           underline: Container(
                    //             width: 200,
                    //             height: 1,
                    //             color: Color(0xFFF1CA1AC),
                    //           ),
                    //           // Initial Value
                    //           value: dropdownvalue,

                    //           // Down Arrow Icon
                    //           icon: const Icon(Icons.keyboard_arrow_down),

                    //           items: snapshot.data
                    //               .map<DropdownMenuItem<String>>(
                    //                   (fc) => DropdownMenuItem<String>(
                    //                         value: (fc['id'].toString()),
                    //                         child: Text(
                    //                           fc['nama'],
                    //                           style: TextStyle(
                    //                             color: Color(0xFFF1CA1AC),
                    //                           ),
                    //                         ),
                    //                       ))
                    //               .toList(),
                    //           // After selecting the desired option,it will
                    //           // change button value to selected value
                    //           onChanged: (String? newValue) {
                    //             setState(() {
                    //               dropdownvalue = newValue!;
                    //             });
                    //           },
                    //         ),
                    //       );
                    //     }),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      alignment: Alignment.center,
                      width: 250,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Color(0xFFF1CA1AC),
                      ),
                      child: TextButton(
                        onPressed: () {
                          if (ageController.text == "" ||
                              bbController.text == "" ||
                              tbController.text == "") {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: Text("Warning"),
                                      content: Text(
                                          "Isi Semua Inputan"),
                                    ));
                            
                            print("data null");
                          } else {
                            activityController.gd.value = dropdowngender;
                            
                            activityController.age.value =
                                double.parse(ageController.text);
                            activityController.bb.value =
                                double.parse(bbController.text);
                            activityController.tb.value =
                                double.parse(tbController.text);
                            
                            calorieController.bmiCalculate(
                                double.parse(bbController.text),
                                double.parse((tbController.text)));
                            print("imt : ${calorieController.bmiSum.value}");
                            calorieController.bmiCategory();
                            print(
                                "kategory: ${calorieController.bmiNumCategory.value}");
                            Navigator.pushNamed(context, '/activity_form');
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'Submit',
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
