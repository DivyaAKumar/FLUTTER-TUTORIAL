import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_flutter_app/IntroScreen.dart';
import 'package:my_first_flutter_app/SplashScreen.dart';
import 'package:my_first_flutter_app/ui_helper/util.dart';
import 'package:intl/intl.dart';
import 'package:my_first_flutter_app/widgets/detailedPage.dart';
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
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _width = 200.0; //to create pvt field inside dart _ is used before name
  var _height = 100.0;
  var my_opacity = 1.0;
  bool isFirst = true;
  var arrIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13,14,15,16];

  bool isVisible = true;
  bool flag = true;
  Color bgColor = Colors.blueGrey;
  //Decoration myDecor = BoxDecoration(borderRadius: BorderRadius.circular(2));

  @override
  //  void initState() {

  //   super.initState();
  //   Timer(Duration(seconds: 4),() {
  //     reload();
  //   },);
  //  }
  void reload() {
    setState(() {
      if (isFirst) {
        isFirst = false;
      } else {
        isFirst = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List view scrollview'),
      ),
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 200,
          children: arrIndex.map((value) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Center(child: Text('$value', style: TextStyle(fontSize: 25),)),
                      height: double.infinity,
                      decoration: BoxDecoration(
                         color: Colors.blue,
                         borderRadius: BorderRadius.circular(21)
                      ),
                     
                    ),
          ))
        
              .toList(), // Ensure it's a List<Widget>
        ),
      ),

      // Container(
      //   height: 100,
      //   width: double.infinity,
      //   color: Colors.deepPurpleAccent,
      //   // decoration: BoxDecoration(

      //   // ),

      // ),
      // Container(
      //   height: 100,
      //   width: double.infinity,
      //   color: Colors.blueGrey,
      //   // decoration: BoxDecoration(

      //   // ),

      // ),Container(
      //   height: 100,
      //   width: double.infinity,
      //   color: Colors.orange,
      //   // decoration: BoxDecoration(

      //   // ),

      // ),Container(
      //   height: 100,
      //   width: double.infinity,
      //   color: Colors.red,
      //   // decoration: BoxDecoration(

      //   // ),

      // ),Container(
      //   height: 100,
      //   width: double.infinity,
      //   color: Colors.pink,
      //   // decoration: BoxDecoration(

      //   // ),

      // ),
      // Container(
      //   height: 100,
      //   width: double.infinity,
      //   color: Colors.purple,
      //   // decoration: BoxDecoration(

      //   // ),

      // ),
      // Container(
      //   height: 100,
      //   width: double.infinity,
      //   color: Colors.green,
      //   // decoration: BoxDecoration(

      //   // ),

      // ),
      // Container(
      //   height: 100,
      //   width: double.infinity,
      //   color: Colors.blue,
      //   // decoration: BoxDecoration(

      //   // ),

      // ),
      // Container(
      //   height: 100,
      //   width: double.infinity,
      //   color: Colors.orange,
      //   // decoration: BoxDecoration(

      //   // ),

      // ),
      // Container(
      //   height: 100,
      //   width: double.infinity,
      //   color: Colors.red,

      // ),
      // Container(
      //   height: 100,
      //   width: double.infinity,
      //   color: Colors.amber,
      //   // decoration: BoxDecoration(

      //   // ),

      // ),
    ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState
