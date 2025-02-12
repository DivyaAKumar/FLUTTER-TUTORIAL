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
        title: Text('Custom Fonts in Flutter'),
        //it is used to recycle memory
        backgroundColor: Colors.purple,
      ),
      body: //go to pubspec.yaml file and make changes in the font section below assets
      //give the desired path of the file where the downloaded font is saved 
      
       Center(child: Text("Hello world", style: TextStyle(fontFamily: 'Calligraphy' , fontSize: 40 , fontWeight: FontWeight.w500),)),
    ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState
