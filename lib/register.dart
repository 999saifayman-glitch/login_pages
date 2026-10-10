import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/Basic_Function/Buttonfunc.dart';
import 'package:flutter_login/Basic_Function/textfunc.dart';
import 'package:flutter_login/login.dart';
import 'package:flutter_login/signup.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _Registerstate();
}

class _Registerstate extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF8C5CB3),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              customtexttop(text: "Welcome To"),
              customtexttop(text: "Shh!"),
              Text(
                "A Hub Where Whispers Echo ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "Echo",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 250),
              Center(
                child: custommaterialButton(
                  onpressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => signuppage()),
                    );
                  },
                  title: "sign up",
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: customtextbottom(
                  textwhite: "Already have an account?  ",
                  textblack: "Login",
                  ontap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
