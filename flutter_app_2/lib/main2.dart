import 'dart:ui';
import 'package:flutter/material.dart';
import 'MoneyBox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Test Container"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
           
              MoneyBox("ยอดคงเหลือ ", 80000, 100, Colors.blueAccent),
              MoneyBox("รายรับ ", 10000, 100, Colors.green.shade700),
              MoneyBox("รายจ่าย ", 7000, 100, Colors.deepOrange),
              MoneyBox("ค้างจ่าย ", 5000, 100, Colors.yellow.shade600),
              Container(
                child: TextButton(
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 30),
                  ),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {},
                ),
              ),
          ],
          ),
        ),
      ),
    );
  }
}
