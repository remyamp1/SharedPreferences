import 'package:flutter/material.dart';
import 'package:sharedpreferences/String.dart';
import 'package:sharedpreferences/ToDo.dart';
import 'package:sharedpreferences/count.dart';
import 'package:sharedpreferences/list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Todoexample(),
      
    );
  }
}