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
        title: Text('Single child scroll view In Flutter'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 100,
                          color: Colors.orange,
                          child: Center(child: Text("data1" , style: TextStyle(fontSize: 25),)),
                        ),
                        Container(
                          height: 200,
                           width: 100,
                          color: Colors.lightBlue,
                          child: Center(child: Text("data1" , style: TextStyle(fontSize: 25),)),
                        ),
                        Container(
                          height: 200,
                           width: 100,
                          color: Colors.yellow,
                          child: Center(child: Text("data1" , style: TextStyle(fontSize: 25),)),
                        ),
                        Container(
                          height: 200,
                           width: 100,
                          color: Colors.green,
                          child: Center(child: Text("data1" , style: TextStyle(fontSize: 25),)),
                        ),
                        Container(
                          height: 200,
                           width: 100,
                          color: Colors.pink,
                          child: Center(child: Text("data1" , style: TextStyle(fontSize: 25),)),
                        ),
                      ],
                    ),
                  ),
                ),
//container 1
              const SizedBox(height: 20),
              Container(
                height: 200,
                color: Colors.lightBlue,
                child: Center(child: Text("data2" , style: TextStyle(fontSize: 25),)),
              ) ,//container 2
               const SizedBox(height: 20),
              Container(
                height: 200,
                color: Colors.green,
                child: Center(child: Text("data3" , style: TextStyle(fontSize: 25),)),
              ) ,//container 3
               const SizedBox(height: 20),
              Container(
                height: 200,
                color: Colors.pink,
                child: Center(child: Text("data4" , style: TextStyle(fontSize: 25),)),
              ) ,//container 4
               const SizedBox(height: 20),
              Container(
                height: 200,
                color: Colors.orange,
                child: Center(child: Text("data5" , style: TextStyle(fontSize: 25),)),
              ) ,//container 5
               const SizedBox(height: 20),
              Container(
                height: 200,
                color: Colors.purple,
                child: Center(child: Text("data6" , style: TextStyle(fontSize: 25),)),
              ) ,//container 6
               const SizedBox(height: 20),
              Container(
                height: 200,
                color: Colors.red,
                child: Center(child: Text("data7" , style: TextStyle(fontSize: 25),)),
              ) ,//container 7
          
            ],
          
          ),
        ),
      )
    ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState
