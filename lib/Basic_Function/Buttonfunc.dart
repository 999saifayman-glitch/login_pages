import 'package:flutter/material.dart';

class custommaterialButton extends StatelessWidget {
  VoidCallback? onpressed;
  String? title;
  custommaterialButton({super.key, required this.onpressed,required this.title});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      minWidth: 284,
      height: 59,
      color: Colors.black,
      child: Text(
        title!,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
