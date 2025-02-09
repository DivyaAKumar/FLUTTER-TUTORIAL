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
      body: Container(
        height: 500,
        decoration: BoxDecoration(
    border: Border.all(
      color: Colors.black, // Border color
      width: 3.0,         // Border width
    ),
  ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                //or <Text> for using only Text
                Text(
                  "1",
                  style: TextStyle(color: Colors.amberAccent, fontSize: 30),
                ),
                Text(
                  "2",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                Text(
                  "3",
                  style: TextStyle(color: Colors.pink, fontSize: 30),
                ),
                Text(
                  "4",
                  style: TextStyle(color: Colors.red, fontSize: 30),
                ),
                Text(
                  "5",
                  style: TextStyle(color: Colors.blue, fontSize: 30),
                ),
                OutlinedButton(
                    onPressed: () {
                      print("Clicked");
                    },
                    child: Text("Click"))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                //or <Text> for using only Text
                Text(
                  "1",
                  style: TextStyle(color: Colors.amberAccent, fontSize: 30),
                ),
                Text(
                  "2",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                Text(
                  "3",
                  style: TextStyle(color: Colors.pink, fontSize: 30),
                ),
                Text(
                  "4",
                  style: TextStyle(color: Colors.red, fontSize: 30),
                ),
                Text(
                  "5",
                  style: TextStyle(color: Colors.blue, fontSize: 30),
                ),
                OutlinedButton(
                    onPressed: () {
                      print("Clicked");
                    },
                    child: Text("Click"))
              ],
            ),
          ],
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