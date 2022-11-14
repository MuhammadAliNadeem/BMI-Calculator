// ignore_for_file: camel_case_types, prefer_const_constructors
import 'package:bmi_calculator/BMI_calculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xFF0A0E21),
      scaffoldBackgroundColor:  Color(0xFF0A0E21),
    ),
    initialRoute:'BMI' ,
    routes: {
      'BMI':(context) => BMI_Calculator(),
      // 'calculation':(context) => ResultPage()
    },
     
    );
    
  }
}
