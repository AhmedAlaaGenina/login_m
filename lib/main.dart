import 'package:flutter/material.dart';
import 'package:login_m/bmi_screen.dart';
import 'package:login_m/counter_screen.dart';
import 'package:login_m/login_screen.dart';
import 'package:login_m/messenger.dart';
import 'package:login_m/users_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
