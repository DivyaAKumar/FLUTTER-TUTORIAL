import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
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
          title: Text('Rich Text Widget in Flutter'),
         // backgroundColor: Colors.purple,
        ),
        body: Center(
          child: RichText(text: TextSpan(
            style: TextStyle(
              fontSize: 27,
              color: Colors.blueGrey
            ),
            children: <TextSpan>[
              TextSpan(text: "It's "),
              TextSpan(text: "all ",style: TextStyle(fontSize: 35, color: Colors.blueAccent, fontWeight: FontWeight.bold)),
              TextSpan(text: "about widgets..." , style:TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold))
            ]
          )),
        )
          
                 
        ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState


