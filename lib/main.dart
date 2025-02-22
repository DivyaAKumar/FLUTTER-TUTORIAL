import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_flutter_app/IntroScreen.dart';
import 'package:my_first_flutter_app/SplashScreen.dart';
import 'package:my_first_flutter_app/ui_helper/util.dart';
import 'package:intl/intl.dart';
import 'package:my_first_flutter_app/widgets/rounded_btn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue, 
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20), 
  ),
      ),
      home: MyHomePage(),
    );
  } //end of widget build
} //end of MyApp class

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
   RangeValues values = RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
    //var arr_name = ["Ram", 'Sita', 'Laxman', 'Dinesh'];
    var time = DateTime.now();
    var name = TextEditingController();
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
    //var no2Controller = TextEditingController();
 
    return Scaffold(
        appBar: AppBar(
          
          title: Text('Range Slider in Flutter'),
           
        ),
      body: RangeSlider(values: values,
       min: 0,
       max: 100,
       labels:labels,
       activeColor: Colors.blue,
        divisions: 10,
        inactiveColor:  Colors.blue[100],
       onChanged: (newValue){
        values= newValue;
        print('${newValue.start}, ${newValue.end}');
        setState(() {
          
        });

      })
        ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState


