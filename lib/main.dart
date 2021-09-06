import 'package:flutter/material.dart';
import 'package:hive_example/screens/home.dart';
import 'package:hive_example/services/hive_helper.dart';

void main() {
  HiveHelper.createDB();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}
