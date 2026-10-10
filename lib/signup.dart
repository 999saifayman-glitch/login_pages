import 'package:flutter/material.dart';
import 'package:flutter_login/Basic_Function/Buttonfunc.dart';
import 'package:flutter_login/Basic_Function/customtextfaild.dart';
import 'package:flutter_login/Basic_Function/textfunc.dart';
import 'package:flutter_login/login.dart';

class signuppage extends StatefulWidget {
  @override
  State<signuppage> createState() => _signuppagestate();
}

class _signuppagestate extends State<signuppage> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Color(0xFF8C5CB3),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.all(26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 80),
                  customtexttop(text: "Sign up to Shh!"),
                  SizedBox(height: 30),
                  custommaterialButton(
                    onpressed: () {},
                    title: "Sign up with Google",
                  ),
                  SizedBox(height: 30),
                  customtextcenter(
                    text: "_______ Or continue with Email _______",
                  ),
                  SizedBox(height: 30),
                  Customtextfaild(hint: "  Enter your name"),
                  SizedBox(height: 30),
                  Customtextfaild(hint: "  Enter username"),
                  SizedBox(height: 30),
                  Customtextfaild(hint: "  Enter  Email"),
                  SizedBox(height: 30),
                  Customtextfaild(hint: "  Enter password"),
                  CheckboxListTile(
                    value: check,
                    onChanged: (val) {
                      setState(() {
                        check = val!;
                      }); 
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      "I agree with the Terms of Service and Privacy policy",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  custommaterialButton(
                    onpressed: (){},
                     title: "Create Account"),
                      SizedBox(height:10),
                    Center(child:customtextbottom(
                      textwhite: "Already have an account?  ",
                      textblack: "Login",
                      ontap: (){
                        Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                      }
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
