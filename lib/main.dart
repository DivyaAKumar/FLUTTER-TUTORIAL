import 'dart:async';
import 'dart:math';

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding and margin in Flutter'),
        //it is used to recycle memory
        backgroundColor: Colors.purple,
      ),
       body: 
         Container(
            margin: EdgeInsets.all(50),
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(color: Colors.black)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Hello",style: TextStyle(fontSize: 30),),
            )),

       
        
    ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState
