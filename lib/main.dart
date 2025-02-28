import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_flutter_app/IntroScreen.dart';
import 'package:my_first_flutter_app/SplashScreen.dart';
import 'package:my_first_flutter_app/ui_helper/util.dart';
import 'package:intl/intl.dart';
import 'package:my_first_flutter_app/widgets/detailedPage.dart';
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
      home: MyHomePage(),
    );
  } //end of widget build
} //end of MyApp class

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  late Animation animation; //baad me initialize karne ke liye late keyword
  late Animation colorAnimation;
  late AnimationController animationController;
  

  @override
  
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration( seconds: 5));
    animation = Tween(begin: 250.0,end: 100.0).animate(animationController); //make sure to give double 
    
    
    colorAnimation = ColorTween(begin: Colors.indigo,end: Colors.red).animate(animationController);
    animationController.addListener(() {
      print(animation.value);
      setState(() {
        
      
      });
    },);

    animationController.forward(); //to start animation 
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Text('Tween animation'), //between(begin and end specify), 
        ), //AppBar            //2.controller-controls animation   
                       //mixin class-(single tick provider)-gives main points b/w begin and end-gives values(timing duration divide) to apply animation 


        body: Center(
          child: Container(
            width: animation.value,
            height: animation.value,
            color: colorAnimation.value,
          ),
        )
            ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState
