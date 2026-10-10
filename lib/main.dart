import 'package:flutter/material.dart';
import 'package:flutter_login/login.dart';
import 'package:flutter_login/register.dart';
import 'package:flutter_login/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home:Register(),
    );
  }
}