import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/IntroScreen.dart';
import 'package:my_first_flutter_app/main.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    
    super.initState();
    Timer(Duration(seconds: 5),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => IntroScreen(),));
    }, );
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      color: Colors.indigo[900],
      child: Center(child: Text("BMI Calculator", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)),
    ),
  );
  }
}