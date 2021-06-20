import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;

  const BmiResult({Key key, this.result, this.isMale, this.age})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.keyboard_arrow_left),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text("BMI Result"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender : ${isMale ? 'Male' : 'Female'}",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              "Result :$result",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              "Age :$age",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
