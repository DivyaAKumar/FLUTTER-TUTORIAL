import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/ui_helper/util.dart';
import 'package:intl/intl.dart';

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
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text('Formatting Date in Flutter'),
        //it is used to recycle memory
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          width: 500,
          height: 500,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [    
                
                Center(child: Text("Current Time in hms:\n ${DateFormat('Hms').format(time)}", style: TextStyle(fontSize: 25),)),
                 Center(child: Text("Current Time in yMMMd:\n ${DateFormat('yMMMd').format(time)}", style: TextStyle(fontSize: 25),)),
                 Center(child: Text("Current Time in MMMMEEEEd:\n ${DateFormat('MMMMEEEEd').format(time)}", style: TextStyle(fontSize: 25),)),
                 ElevatedButton(onPressed: (){
                  setState(() { //calls build and fetches current time 
                    
                  });
            
                }, child: Text("Click here to view current time"))
              ],
            ),
          ),
        ),
      )
    ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState
