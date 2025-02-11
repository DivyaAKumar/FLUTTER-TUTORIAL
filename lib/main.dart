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
    var arrCount = ["One",'Two',"Three",'Four','Five'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Widget in Flutter'),
        //it is used to recycle memory
        backgroundColor: Colors.purple,
      ),
       body: //expands its child widget wherever it finds space 
            Row(
             // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.orange,
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.pink,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.yellow,
                  ),
                ),

              ],
            )
    ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState
