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
    var arr_name = ["Ram", 'Sita', 'Laxman', 'Dinesh'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget in Flutter'),
        //it is used to recycle memory
        backgroundColor: Colors.purple,
      ),
      body: //card widget is used to elevate your widget(to give it a 3d effect)
        // Card(
        //   elevation: 6, //5-7 or 3
        //   shadowColor: Colors.red,
          
        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Text("This is a Card Widget!", style: TextStyle(fontSize: 25),),
        //   ),
        //   )
        ListView.builder(itemBuilder: (context, index) {
          return  Card(
            elevation: 6, //5-7 or 3
          shadowColor: Colors.red,
          
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Text("[$index]+1"),
              title: Text(arr_name[index], style: TextStyle(fontSize: 25),),
              subtitle: Text('Phone no.'),
              trailing: Icon(Icons.accessibility),
            )
            
            
            
           // Text(arr_name[index], style: TextStyle(fontSize: 25),),
          ),
          );
        }, itemCount: arr_name.length,
        )
    ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState
