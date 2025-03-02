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
    var arrColor = [Colors.yellow, Colors.purple, Colors.green, Colors.red, Colors.orange,Colors.pink, Colors.blue, Colors.green, Colors.red, Colors.orange,Colors.yellow, Colors.purple, Colors.green, Colors.red, Colors.orange,Colors.pink, Colors.blue, Colors.green, Colors.red, Colors.orange ];
    return Scaffold(
        appBar: AppBar(
          title:
              Text('Gridview count and extent'), 
        ), //AppBar           
       //many circles
       //enlarging the circles
       //opacity of circles more at end

         body: 
         //FOR DYNAMIC DATA- GRIDVIEW.BUILDER IS USED 


         GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
         maxCrossAxisExtent: 100,
          crossAxisSpacing: 11, // Space between columns
          mainAxisSpacing: 11,  //space between rows
          ),
          itemBuilder: (context, index) {
           return Container(color: arrColor[index],);
         },itemCount: arrColor.length, 
         )




      
        //  GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 4,
        //   crossAxisSpacing: 11, // Space between columns
        //   mainAxisSpacing: 11,  //space between rows
        //   ),
        //   itemBuilder: (context, index) {
        //    return Container(color: arrColor[index],);
        //  },itemCount: arrColor.length, 
        //  )








        //  Column(
        //    children: [
         
         
        //      Expanded(
        //        child: GridView.count( //acc to count 
        //         crossAxisCount:2 ,//ek row me kitne column rhenge,
        //         mainAxisSpacing: 11, //rows ke beech spacing 
        //         crossAxisSpacing: 11, // column ke beech spacing
        //          children: [// container dont require fixed size in case of gridview- self adjusting
                 
        //           Container(  color: arrColor[0],),
        //             Container(  color: arrColor[1],),
        //               Container(  color: arrColor[2],),
        //                 Container(  color: arrColor[3],),
        //                   Container(  color: arrColor[4],),
        //                     Container(  color: arrColor[5],),
        //                       Container(  color: arrColor[6],),
        //                         Container(  color: arrColor[7],),
        //                           Container(  color: arrColor[8],),
        //                             Container(  color: arrColor[9],),
                                    
                    
               
        //          ]
        //        ),
        //      ),
         
         
         
         
               
        //     Expanded(
        //       child: GridView.extent(
        //                 maxCrossAxisExtent: 150 ,
        //                 mainAxisSpacing: 11,
        //                 crossAxisSpacing: 11,
        //                 children: [
        //         Container(  color: arrColor[0],),
        //             Container(  color: arrColor[1],),
        //               Container(  color: arrColor[2],),
        //                 Container(  color: arrColor[3],),
        //                   Container(  color: arrColor[4],),
        //                     Container(  color: arrColor[5],),
        //                       Container(  color: arrColor[6],),
        //                         Container(  color: arrColor[7],),
        //                           Container(  color: arrColor[8],),
        //                             Container(  color: arrColor[9],),
        //                 ],
               
        //                ),
        //     ),
         
         
         
        //    ],
        //  )

      
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
