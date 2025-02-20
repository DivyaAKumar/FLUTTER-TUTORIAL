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
          title: Text('SizedBox in Flutter'),
         // backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 100,
                  maxWidth: 200,
                  minHeight: 50,
                  minWidth: 80
              ),
                     
             child: SizedBox(
                  child: ElevatedButton(onPressed: () { }
                  , child: Text("Button 1")),
                  ),
              ),
             
             SizedBox( //this sizedbox is used for giving spacing
                    width: 20,
                    height: 20,
             ),
              SizedBox.square(
                dimension: 150,
                child: ElevatedButton(onPressed: () {
                  
                }, child: Text("Button 2")),
              )
            ],//end of children
          ),
        )
          
                 
        ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState


