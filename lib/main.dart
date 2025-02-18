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
          title: Text('Custom widget in Flutter'),
         // backgroundColor: Colors.purple,
        ),
        body: Column(
          children: [
            ContItem(), //<-----custom widget

            Expanded(
              flex:2,
              child: Container(
                color: Colors.red
                ,
              ),
            ),
             Expanded(
              flex: 2,
               child: Container(
                color: Colors.green,
                           ),
             ),
             
          ],
        )
        ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState
class ContItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 2,
      child: Container(
                color: Colors.amber,
              ),
    );
  }

}