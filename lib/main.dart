import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/ui_helper/util.dart';

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
        primarySwatch: Colors.purple,
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),
          headlineMedium:TextStyle(fontSize: 25 , fontWeight: FontWeight.bold, color: Colors.blueAccent) ,
          titleMedium: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
          titleSmall: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, color: Colors.amber),
        ),
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
        title: Text('Styles and Themes in Flutter'),
        //it is used to recycle memory
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [ //copy with is used to add some extra attributes and ! is placed before .copywith
                    //to confirm that the headlineLarge is created and is not null
          Text("Hello World", style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.red)),
          Text("Hello World", style: Theme.of(context).textTheme.titleMedium,),          
          Text("Hello World", style: Theme.of(context).textTheme.headlineMedium),
          Text("Hello World", style: Theme.of(context).textTheme.titleSmall),
          Text("Hello World", style: myTextStyle40(),), //from util.dart
          Text("Hello World", style: myTextStyle30(),), //from util.dart
       ],
      )
    ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState
