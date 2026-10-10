import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Customtextfaild extends StatelessWidget {
  String? hint;

  Customtextfaild({super.key,this.hint});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: hint,
          hintStyle: TextStyle(
             fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
             borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(30),
          )
        ),
      ),
    );
  }
}
