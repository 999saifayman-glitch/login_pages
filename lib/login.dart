import 'package:flutter/material.dart';
import 'package:flutter_login/Basic_Function/Buttonfunc.dart';
import 'package:flutter_login/Basic_Function/customtextfaild.dart';
import 'package:flutter_login/Basic_Function/textfunc.dart';
import 'package:flutter_login/signup.dart';

class Login extends StatefulWidget {
  State<Login> createState() => _loginstate();
}

class _loginstate extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         backgroundColor:  Color(0xFF8C5CB3),
         body: Container(
          width:double.infinity,
                height:double.infinity,
                padding:EdgeInsets.all(26),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    SizedBox(height:80),
                    customtexttop(text: "Log in to Shh!"),
                     SizedBox(height:30),
                     custommaterialButton(
                      onpressed: (){},
                       title: "Log in with Google"),
                       SizedBox(height: 30),
                  customtextcenter(
                    text: "_______ Or continue with Email _______",
                  ),
                   SizedBox(height: 70),
                   Align(
                    alignment: Alignment.centerLeft,
                    child: customtextcenter(text: " Username or Email ")),
                    SizedBox(height: 10),
                    Customtextfaild(),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         customtextcenter(text: "Password"),
                         customtextcenter(text: "Forgot?"),
                      ],
                    ),
                    SizedBox(height: 10),
                    Customtextfaild(),
                    SizedBox(height: 30),
                    customtextbottom(
                      textwhite:"Don’t have an account?  " ,
                      textblack: "Sign up",
                      ontap: (){
                        Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => signuppage()),
                    );
                      })
                  ],
                ),
         ),
      ),
    );
  }
}
