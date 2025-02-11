import 'dart:async';

import 'package:flutter/material.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
    var arrCount = ["One",'Two',"Three",'Four','Five'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Decoration in Flutter'),
        //it is used to recycle memory
        backgroundColor: Colors.purple,
      ),
       body:  Container(
        width: double.infinity, //width full
        height: double.infinity, //height full
        color: Colors.blue,
        child: Center(
          child: Container( 
            decoration: BoxDecoration(
               color: Colors.amber,
              // borderRadius: BorderRadius.circular(11)
               //borderRadius: BorderRadius.only(topLeft: Radius.elliptical(30, 50))
               border: Border.all(
                width: 2,
                color: Colors.black
               ),
               boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  spreadRadius: 20,
                  color: Colors.grey
                ),
               ],
               shape: BoxShape.circle
            ),
             width: 150,
             height: 150,
         
          ),
        ),
       
       )

    ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState
