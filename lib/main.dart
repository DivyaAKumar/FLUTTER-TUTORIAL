import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_flutter_app/IntroScreen.dart';
import 'package:my_first_flutter_app/SplashScreen.dart';
import 'package:my_first_flutter_app/ui_helper/util.dart';
import 'package:intl/intl.dart';
import 'package:my_first_flutter_app/widgets/rounded_btn.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue, 
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20), 
  ),
      ),
      home: SplashScreen(),
    );
  } //end of widget build
} //end of MyApp class

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   String result ="";
  @override
  Widget build(BuildContext context) {
    //var arr_name = ["Ram", 'Sita', 'Laxman', 'Dinesh'];
    var time = DateTime.now();
    var name = TextEditingController();
    //var no2Controller = TextEditingController();
 
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Screen'),
         
        ),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width:250, 
              height: 100, 
              child: Text("Hey user! Type in your name please.",style: TextStyle(fontSize: 30),
            ),

          
            ),

            Container(
              width: 250,
              child: TextField(
                controller: name,
              ),
            ),
            const SizedBox(width: 50,height: 50,),
            Center(child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => IntroScreen(name.text.toString()),));
            }, child: Text("Tap")))
          ],
        )
        )
        ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState


