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
          title: Text('Wrap widget in Flutter'),
         // backgroundColor: Colors.purple,
        ),
        body: 
          Container(
            width: double.infinity,//full width
            height: double.infinity,//full height
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                direction: Axis.horizontal, //for displaying as column
                spacing: 11, //for giving (.mentioned) space between the container
                runSpacing: 11, //for giving .opp_mentioned spacing
                alignment: WrapAlignment.spaceEvenly, 
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.amber,
                  ),
              
              
                      Container(
              width: 70,
              height: 70,
              color: Colors.red,
                      ),
              
                      Container(
              width: 70,
              height: 70,
              color: Colors.blue,
                      ),
              
                      Container(
              width: 70,
              height: 70,
              color: Colors.green,
                      ),
              
                      Container(
              width: 70,
              height: 70,
              color: Colors.brown,
                      ),
              
                      Container(
              width: 70,
              height: 70,
              color: Colors.orange,
                      ),
              
                      Container(
              width: 70,
              height: 70,
              color: Colors.pink,
                      ),
              
                      Container(
              width: 70,
              height: 70,
              color: Colors.deepPurpleAccent,
                      ),
              
                       Container(
                    width: 70,
                    height: 70,
                    color: Colors.amber,
                  ),
              
              
                      Container(
              width: 70,
              height: 70,
              color: Colors.red,
                      ),
              
                      Container(
              width: 70,
              height: 70,
              color: Colors.blue,
                      ),
              
                      Container(
              width: 70,
              height: 70,
              color: Colors.green,
                      ),
              
                      Container(
              width: 70,
              height: 70,
              color: Colors.brown,
                      ),
              
                      Container(
              width: 70,
              height: 70,
              color: Colors.orange,
                      ),
              
                      Container(
              width: 70,
              height: 70,
              color: Colors.pink,
                      ),
              
                      Container(
              width: 70,
              height: 70,
              color: Colors.deepPurpleAccent,
                      ),

                       Container(
                    width: 70,
                    height: 70,
                    color: Colors.amber,
                  ),
              
              
                      Container(
              width: 70,
              height: 70,
              color: Colors.red,
                      ),
              
                      Container(
              width: 70,
              height: 70,
              color: Colors.blue,
                      ),
              
                      Container(
              width: 70,
              height: 70,
              color: Colors.green,
                      ),
              
                      Container(
              width: 70,
              height: 70,
              color: Colors.brown,
                      ),
              
                      Container(
              width: 70,
              height: 70,
              color: Colors.orange,
                      ),
              
                      Container(
              width: 70,
              height: 70,
              color: Colors.pink,
                      ),
              
                      Container(
              width: 70,
              height: 70,
              color: Colors.deepPurpleAccent,
                      ),
              ], //end of children
              ),
            ),
          ),
        ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState


