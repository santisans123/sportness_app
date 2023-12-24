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

class CardContent extends StatelessWidget {
  final String title;
  final String content;

  const CardContent({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      width: 325,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          border: Border.all(color: Color(0xFFF1CA1AC))),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
                color: Color(0xFFF1CA1AC),
                fontSize: 15,
                fontWeight: FontWeight.normal),
          ),
          Text(
            content,
            style: TextStyle(
                color: Color(0xFFF1CA1AC),
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
