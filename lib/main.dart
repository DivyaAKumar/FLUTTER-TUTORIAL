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
    return Scaffold(
      appBar: AppBar(
        title: Text('Rows and Columns In Flutter'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            print("single tapped");

          },
          onDoubleTap: (){
                  print("double tapped");
          },
          onLongPress: (){
                print("long pressed tapped");
          },
          child: Container(
            width: 300,
            height: 300,
            color: Colors.purple,
            child: Center(child: Text("Click here", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400))),
          ),
        ),
      ),
    ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState


// NOTES-
// row-
// MainAxisAlignment.end--- aligns to end of size alloted
// CrossAxisAlignment.end- places widget in the end of container columnwise
// column- 
// MainAxisAlignment.end--- aligns to end of size alloted
// CrossAxisAlignment.end- places widget in the end of container columnwise
// space around- pads half the space ie b/w widgets
// spaceevenly- evenly pads same space what was b/w widgets