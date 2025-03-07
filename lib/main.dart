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
import 'package:shared_preferences/shared_preferences.dart';

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
 

 


  @override
 
  @override
  Widget build(BuildContext context) {
  var imageArr = ["assets/images/ANILKUMAR.jpg", "assets/images/BIJIKUMAR.jpg", "assets/images/bird.png","assets/images/flutter.png",
  "assets/images/happybird.png","assets/images/profile1.jpg","assets/images/ANILKUMAR.jpg", "assets/images/BIJIKUMAR.jpg", "assets/images/bird.png","assets/images/flutter.png",
  "assets/images/happybird.png","assets/images/profile1.jpg"];
    return Scaffold(
        appBar: AppBar(
          title:
              Center(child: Text("Flutter Gallery")), 
        ), //AppBar           

         body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 11,
          mainAxisSpacing: 11,
         ), itemBuilder: (context, index) {
           return Image.asset(imageArr[index]);
         },itemCount: imageArr.length,)
      
      
            ); //end of Scaffold
  }

} //end of _ContainerPageState
