import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
   String result ="";
  @override
  Widget build(BuildContext context) {
    //var arr_name = ["Ram", 'Sita', 'Laxman', 'Dinesh'];
    var time = DateTime.now();
    var no1Controller = TextEditingController();
    var no2Controller = TextEditingController();
 
    return Scaffold(
        appBar: AppBar(
          title: Text('Constrained Box in Flutter'),
         
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConstrainedBox(constraints: BoxConstraints(
                maxHeight: 100,
                maxWidth: 200,
                minHeight: 20,
                minWidth: 45
                
              ),
              child: Text(" Hello world Hello world Hello world Hello world Hello world Hello world", style: TextStyle(fontSize: 25, overflow: TextOverflow.fade),),
              ),
              const SizedBox(height: 30, width: 30,),
          
              ConstrainedBox(constraints: BoxConstraints(
                maxHeight: 100,
                maxWidth: 300,
                minHeight: 100,
                minWidth: 200 
              ),
              child: ElevatedButton(onPressed: 
              () {
                
              }, child: Text("Click")),)
            ],
          ),
        ),
        
        ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState


