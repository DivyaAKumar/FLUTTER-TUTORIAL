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
 
  //late Animation _animation; // _ to make class private
  late AnimationController _animationController;
  @override
  void initState() {
  
    super.initState();
    _animationController = AnimationController(vsync: this,duration: Duration(seconds: 3) , lowerBound: 0.3 );
 // alternative way -// _animation = Tween(begin: 0.0,end: 1.0).animate(_animationController);
   

   _animationController.addListener(() {
     setState(() {
       
     });
   },);
    _animationController.forward();
  }
 
 var listRadius =[100.0,150.0,200.0,250.0,300.0,350.0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Text('Ripple Effect Animation'), 
        ), //AppBar           
       //many circles
       //enlarging the circles
       //opacity of circles more at end

         body: 

         // using icon AND WIDGET BUILD MY CONTAINER
        Center(
          child: Stack(
            alignment: Alignment.center,
            children:[
              buildMyContainer(listRadius[0]),
              buildMyContainer(listRadius[1]),
              buildMyContainer(listRadius[2]),
              buildMyContainer(listRadius[3]),
              buildMyContainer(listRadius[4]),
              buildMyContainer(listRadius[5]),
              Icon(Icons.add_call, color: Colors.white,size: 35)
            ] 
        )
        )




    
         //METHOD 1: USING ANIMATION CONTROLLER BUT W/O ICON
        // Center(
        //   child: Stack(
        //     alignment: Alignment.center,
        //     children: listRadius.map((radius) => Container(
        //       width: radius * _animationController.value,
        //       height: radius * _animationController.value,
        //       decoration: BoxDecoration(
        //         shape: BoxShape.circle,
        //         color: Colors.blue.withAlpha(((1.0 - _animationController.value) *255).toInt()),
        //       ),
        //     ) ,).toList()
        //   ),
        // ),



    
        // alternative way- USING ANIMATION VALUE W/O ICON
        // Center(
        //   child: Stack(
        //     alignment: Alignment.center,
        //     children: listRadius.map((radius) => Container(
        //       width: radius * _animation.value,
        //       height: radius * _animation.value,
        //       decoration: BoxDecoration(
        //         shape: BoxShape.circle,
        //         color: Colors.blue.withAlpha(((1.0 - _animation.value) *255).toInt()),
        //       ),
        //     ) ,).toList()
        //   ),
        // )
      
            ); //end of Scaffold
  } //end of Widget build


  Widget buildMyContainer(radius){
    return Container(
              width: radius * _animationController.value,
              height: radius * _animationController.value,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.withAlpha(((1.0 - _animationController.value) *255).toInt()),
              ),
            );
  }
} //end of _ContainerPageState
