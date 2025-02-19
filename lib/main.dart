import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/ui_helper/util.dart';
import 'package:intl/intl.dart';

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
      home: ContainerPage(),
    );
  } //end of widget build
} //end of MyApp class

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {

  @override
  Widget build(BuildContext context) {
    //var arr_name = ["Ram", 'Sita', 'Laxman', 'Dinesh'];
    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          title: Text('Stacking widgets in Flutter'),
         // backgroundColor: Colors.purple,
        ),
        body: Container(
          width: 250,
          height: 250,
          child: Stack(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.blueAccent,
                child: Text("Container 1"),
              ),
          
              Positioned(
                left: 21,
                top: 21,
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey,
                  child: Text("Container 2"),
                
                ),
              ),
          
              Positioned(
                right: 21,
                bottom: 21,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blueGrey,
                  child: Text("Container 3"),
                ),
              )
            ],
          ),
        )
        ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState


