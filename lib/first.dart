import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class First extends StatelessWidget {
  void click() {}
  @override
  Widget build(BuildContext context) {
    log("app");
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50.0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
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
               Padding(
                  padding: const EdgeInsets.only(top: 10.0, right: 20.0),
                  child: Container(
                      alignment: Alignment.topRight,
                      child: Image.asset('asset/images/logo.jpg',
                          width: 50.0, height: 50.0)),
                ),
              
              SizedBox(
                height: 350,
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Center(
                    child: Container(
                        child: Image.asset('asset/images/illustration/auth.png',
                            width: 300.0, height: 300.0)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      alignment: Alignment.center,
                      width: 250,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Color(0xFF2B9EA4),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Belum punya akun?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 250,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/customer_reg');
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'Register',
                            style: TextStyle(
                                color: Color(0xFF2B9EA4),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 250,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/menu_registrasi');
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'Partner',
                            style: TextStyle(
                                color: Color(0xFF2B9EA4),
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
            ],
          ),
        ),
      ),
    );
  }
}
