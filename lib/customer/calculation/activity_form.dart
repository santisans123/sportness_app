import 'package:first_app/customer/calculation/controller/activity_controller.dart';
import 'package:first_app/customer/calculation/controller/calorie_controller.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:first_app/HomePage.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:get/get.dart';
import 'package:first_app/main.dart';
import 'dart:developer';

class ActivityForm extends StatefulWidget {
  const ActivityForm({
    Key? key,
  }) : super(key: key);
  @override
  State<ActivityForm> createState() => _ActivityForm();
}

class _ActivityForm extends State<ActivityForm> {
  final calorieController = Get.find<CalorieController>();
  final activityController = Get.find<ActivityController>();

  TextEditingController durationController = TextEditingController();
  TextEditingController durationController2 = TextEditingController();
  TextEditingController durationController3 = TextEditingController();

  var cabora;

  String dropdownActivity = 'sangat-ringan';

  final _futurex = supabase.from('cabang_olahraga').select();

  Color colorCategory() {
    if (calorieController.bmiNumCategory.value == 'Normal') {
      return Colors.green;
    } else if (calorieController.bmiNumCategory.value == 'Kurus') {
      return Colors.blue;
    } else if (calorieController.bmiNumCategory.value == 'Sangat Kurus') {
      return Colors.brown;
    } else if (calorieController.bmiNumCategory.value == 'Gemuk') {
      return Colors.orange;
    } else if (calorieController.bmiNumCategory.value == 'Obesitas') {
      return Colors.red;
    } else {
      return Colors.grey;
    }
  }

  Widget contentForm(String label, String dropdownvalue,
      String dropdownFrequency, TextEditingController durationController) {
    return Column(
      children: [
        FutureBuilder(
            future: _futurex,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }
              final dat = snapshot.data!;
              log("zz ${dropdownvalue}");

              return Container(
                  width: 260,
                  height: 60,
                  child: InputDecorator(
                    decoration: InputDecoration(
                      labelText:
                          'Latihan Olahraga ${label}', // Label di atas dropdown
                      labelStyle: TextStyle(
                        color: Color(0xFFF1CA1AC),
                      ),
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.only(top: 10), // Padding untuk label
                    ),
                    child: DropdownButton(
                      dropdownColor: Colors.white,
                      isExpanded: true,
                      iconEnabledColor: Color(0xFFF1CA1AC),
                      underline: Container(
                        width: 200,
                        height: 1,
                        color: Color(0xFFF1CA1AC),
                      ),
                      // Initial Value
                      value: dropdownvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      items: snapshot.data
                          .map<DropdownMenuItem<String>>(
                              (fc) => DropdownMenuItem<String>(
                                    value: (fc['nama'].toString()),
                                    child: Text(
                                      fc['nama'],
                                      style: TextStyle(
                                        color: Color(0xFFF1CA1AC),
                                      ),
                                    ),
                                  ))
                          .toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          if (label == "1")
                            activityController.dropdownorvalue.value =
                                newValue!;
                          else if (label == "2")
                            activityController.dropdownorvalue2.value =
                                newValue!;
                          else
                            activityController.dropdownorvalue3.value =
                                newValue!;
                        });
                      },
                    ),
                  ));
            }),
        const SizedBox(
          height: 12,
        ),
        Container(
          width: 260,
          height: 60,
          child: TextField(
            keyboardType: TextInputType.number,
            controller: durationController,
            style: TextStyle(color: Color(0xFFF1CA1AC)),
            decoration: const InputDecoration(
              /*suffix: Icon(
                            FontAwesomeIcons.eyeSlash,
                            color: Colors.red,
                          ),*/
              labelText: "Durasi Latihan (menit)",
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
          child: InputDecorator(
            decoration: InputDecoration(
              labelText: 'Frekuensi', // Label di atas dropdown
              labelStyle: TextStyle(
                color: Color(0xFFF1CA1AC),
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 10), // Padding untuk label
            ),
            child: DropdownButton<String>(
              padding: EdgeInsets.symmetric(horizontal: 10),
              dropdownColor: Colors.white,
              isExpanded: true,
              iconEnabledColor: Color(0xFFF1CA1AC),
              underline: Container(
                width: 200,
                height: 1,
                color: Color(0xFFF1CA1AC),
              ),
              value: dropdownFrequency,
              icon: Icon(Icons.keyboard_arrow_down, color: Color(0xFFF1CA1AC)),
              items: <DropdownMenuItem<String>>[
                DropdownMenuItem<String>(
                  value: '1',
                  child: Text(
                    '1x Seminggu',
                    style: TextStyle(
                      color: Color(0xFFF1CA1AC),
                    ),
                  ),
                ),
                DropdownMenuItem<String>(
                  value: '2',
                  child: Text(
                    '2x Seminggu',
                    style: TextStyle(
                      color: Color(0xFFF1CA1AC),
                    ),
                  ),
                ),
                DropdownMenuItem<String>(
                  value: '3',
                  child: Text(
                    '3x Seminggu',
                    style: TextStyle(
                      color: Color(0xFFF1CA1AC),
                    ),
                  ),
                ),
                DropdownMenuItem<String>(
                  value: '4',
                  child: Text(
                    '4x Seminggu',
                    style: TextStyle(
                      color: Color(0xFFF1CA1AC),
                    ),
                  ),
                ),
                DropdownMenuItem<String>(
                  value: '5',
                  child: Text(
                    '5x Seminggu',
                    style: TextStyle(
                      color: Color(0xFFF1CA1AC),
                    ),
                  ),
                ),
                DropdownMenuItem<String>(
                  value: '6',
                  child: Text(
                    '6x Seminggu',
                    style: TextStyle(
                      color: Color(0xFFF1CA1AC),
                    ),
                  ),
                ),
                DropdownMenuItem<String>(
                  value: '7',
                  child: Text(
                    '7x Seminggu',
                    style: TextStyle(
                      color: Color(0xFFF1CA1AC),
                    ),
                  ),
                ),
              ],
              onChanged: (String? newValue) {
                setState(() {
                  if (label == "1")
                    activityController.dropdownFrequency.value = newValue!;
                  else if (label == "2")
                    activityController.dropdownFrequency2.value = newValue!;
                  else
                    activityController.dropdownFrequency3.value = newValue!;
                });
              },
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC9DEDF),
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Perhitungan Aktivitas",
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
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            color: Colors.white,
          ),
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: Container(
                      height: 200,
                      child: SfRadialGauge(
                          animationDuration: 20,
                          axes: <RadialAxis>[
                            RadialAxis(
                              minimum: 16,
                              maximum: 30,
                              ranges: <GaugeRange>[
                                GaugeRange(
                                  startValue: 16,
                                  endValue: 18.5,
                                  color: Colors.blue,
                                  sizeUnit: GaugeSizeUnit.factor,
                                  startWidth: 0.25,
                                  endWidth: 0.25,
                                  label: 'Kurang',
                                  labelStyle: GaugeTextStyle(
                                      fontFamily: 'Times',
                                      color: Colors.white,
                                      fontSize: 10),
                                ),
                                GaugeRange(
                                    startValue: 18.6,
                                    endValue: 25,
                                    color: Colors.green,
                                    sizeUnit: GaugeSizeUnit.factor,
                                    startWidth: 0.25,
                                    endWidth: 0.25,
                                    label: 'Normal',
                                    labelStyle: GaugeTextStyle(
                                        fontFamily: 'Times',
                                        color: Colors.white,
                                        fontSize: 10)),
                                GaugeRange(
                                    startValue: 25.1,
                                    endValue: 40,
                                    color: Colors.red,
                                    sizeUnit: GaugeSizeUnit.factor,
                                    startWidth: 0.25,
                                    endWidth: 0.25,
                                    label: 'Lebih',
                                    labelStyle: GaugeTextStyle(
                                        fontFamily: 'Times',
                                        color: Colors.white,
                                        fontSize: 10))
                              ],
                              pointers: <GaugePointer>[
                                NeedlePointer(
                                    value: calorieController.bmiSum.value)
                              ],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                    widget: Container(
                                        child: Text(
                                            'IMT: ${(calorieController.bmiSum.value).toStringAsFixed(2)}',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold))),
                                    angle: 90,
                                    positionFactor: 0.7)
                              ],
                            )
                          ]))),
              Container(
                margin: const EdgeInsets.only(
                  bottom: 10.0,
                ),
                alignment: Alignment.center,
                width: 325,
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: colorCategory(),
                ),
                child: Text(
                  '${calorieController.bmiNumCategory.value}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 260,
                height: 60,
                child: InputDecorator(
                  decoration: InputDecoration(
                    labelText: 'Aktivitas ', // Label di atas dropdown
                    labelStyle: TextStyle(
                      color: Color(0xFFF1CA1AC),
                    ),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.only(top: 10), // Padding untuk label
                  ),
                  child: DropdownButton<String>(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    dropdownColor: Colors.white,
                    isExpanded: true,
                    iconEnabledColor: Color(0xFFF1CA1AC),
                    underline: Container(
                      width: 200,
                      height: 1,
                      color: Color(0xFFF1CA1AC),
                    ),
                    value: dropdownActivity,
                    icon: Icon(Icons.keyboard_arrow_down,
                        color: Color(0xFFF1CA1AC)),
                    items: <DropdownMenuItem<String>>[
                      DropdownMenuItem<String>(
                        value: 'sangat-ringan',
                        child: Text(
                          'Sangat Ringan',
                          style: TextStyle(
                            color: Color(0xFFF1CA1AC),
                          ),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: 'ringan',
                        child: Text(
                          'Ringan',
                          style: TextStyle(
                            color: Color(0xFFF1CA1AC),
                          ),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: 'sedang',
                        child: Text(
                          'Sedang',
                          style: TextStyle(
                            color: Color(0xFFF1CA1AC),
                          ),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: 'berat',
                        child: Text(
                          'Berat',
                          style: TextStyle(
                            color: Color(0xFFF1CA1AC),
                          ),
                        ),
                      ),
                    ],
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownActivity = newValue!;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              contentForm(
                  "1",
                  activityController.dropdownorvalue.value,
                  activityController.dropdownFrequency.value,
                  durationController),
              contentForm(
                  "2",
                  activityController.dropdownorvalue2.value,
                  activityController.dropdownFrequency2.value,
                  durationController2),
              contentForm(
                  "3",
                  activityController.dropdownorvalue3.value,
                  activityController.dropdownFrequency3.value,
                  durationController3),

              Container(
                width: 325,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
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
                          if (durationController.text == "") {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: Text("Warning"),
                                      content:
                                          Text("Isi Semua Inputan olahraga 1"),
                                    ));
                          } else {
                            activityController.af.value = dropdownActivity;

                            activityController.dura.value =
                                double.parse(durationController.text);

                            (durationController2.text == "")
                                ? activityController.dura2.value = 0
                                : activityController.dura2.value =
                                    double.parse(durationController2.text);

                            (durationController3.text == "")
                                ? activityController.dura3.value = 0
                                : activityController.dura3.value =
                                    double.parse(durationController3.text);

                            activityController.bmrCalculate(
                                activityController.gd.value,
                                activityController.bb.value,
                                activityController.age.value);
                            log("bmr: ${activityController.bmrSum.value}");
                            activityController
                                .sdaCalculate(activityController.bmrSum.value);
                            log("sda: ${activityController.sdaSum.value}");
                            activityController.afCalculate(
                                activityController.af.value,
                                activityController.gd.value,
                                activityController.bmrSum.value,
                                activityController.sdaSum.value);

                            activityController.kelCalculate(
                                double.parse(
                                    activityController.dropdownFrequency.value),
                                activityController.dura.value,
                                activityController.bb.value,
                                activityController.dropdownorvalue.value);
                            log("af: ${activityController.afSum.value}");
                            log(
                                "fre: ${activityController.dropdownFrequency.value}");
                            log("dura: ${activityController.dura.value}");
                            log("bb: ${activityController.bb.value}");
                            log(
                                "or: ${activityController.dropdownorvalue2.value}");
                            activityController.kelCalculate2(
                                double.parse(activityController
                                    .dropdownFrequency2.value),
                                activityController.dura2.value,
                                activityController.bb.value,
                                activityController.dropdownorvalue2.value);
                            log(
                                "fre2: ${activityController.dropdownFrequency2.value}");
                            log("dura: ${activityController.dura2.value}");
                            log(
                                "or: ${activityController.dropdownorvalue.value}");
                            activityController.kelCalculate3(
                                double.parse(activityController
                                    .dropdownFrequency3.value),
                                activityController.dura3.value,
                                activityController.bb.value,
                                activityController.dropdownorvalue3.value);
                            log(
                                "fre3: ${activityController.dropdownFrequency3.value}");
                            log("dura: ${activityController.dura3.value}");
                            log(
                                "or: ${activityController.dropdownorvalue3.value}");

                            log("kel: ${activityController.kelSum.value}");
                            log("kel2: ${activityController.kelSum2.value}");
                            log("kel3: ${activityController.kelSum3.value}");

                            activityController.sumTotal();
                            log("sumTot: ${activityController.sumTot.value}");
                            activityController.addCalorieOptional(
                                activityController.afSum.value,
                                activityController.kelSum.value,
                                activityController.bb.value,
                                activityController.age.value);
                            log(
                                "daily: ${activityController.dailyCalorie.value}");

                            activityController.carboCalculate(
                                activityController.dailyCalorie.value);
                            activityController.proteinCalculate(
                                activityController.dailyCalorie.value);
                            activityController.fatCalculate(
                                activityController.dailyCalorie.value);

                            log(
                                "carbo: ${activityController.carboSum.value}");
                            log(
                                "protein: ${activityController.proteinSum.value}");
                            log("fat: ${activityController.fatSum.value}");

                            Navigator.pushNamed(context, '/result_calculate');
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
