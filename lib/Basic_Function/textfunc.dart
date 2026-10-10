import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class customtexttop extends StatelessWidget {
  String? text;

  customtexttop({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}

class customtextbottom extends StatelessWidget {
  String? textwhite;
  String? textblack;
  VoidCallback? ontap;

  customtextbottom({super.key, required this.textwhite,required
   this.textblack,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: textwhite,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          TextSpan(
            text: textblack,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            recognizer: TapGestureRecognizer()..onTap = ontap,
          ),
        ],
      ),
    );
  }
}

class customtextcenter extends StatelessWidget {
  String? text;

  customtextcenter({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
      ),
    );
  }
}