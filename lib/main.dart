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
      home: MyHomePage(),
    );
  } //end of widget build
} //end of MyApp class

class MyHomePage extends StatefulWidget {
 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   var _width = 200.0; //to create pvt field inside dart _ is used before name
  var _height = 100.0;
 var my_opacity =1.0;
 bool isFirst =true;

 bool isVisible =true;
   bool flag =true;
   Color bgColor = Colors.blueGrey;
   Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2)
   );
  
   @override
  //  void initState() {
    
  //   super.initState();
  //   Timer(Duration(seconds: 4),() {
  //     reload();
  //   },);
  //  }
    void reload(){
      setState(() {
       if (isFirst) {
          isFirst=false;
       } else {
          isFirst=true;
       }
      });
    }
  
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
        appBar: AppBar(
          
          title: Text('Cross fade animation'),
           
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            AnimatedCrossFade(
            firstChild: Container(
              width: 300,
              height: 300,
              color: Colors.amber,

            ), 
            secondChild: Image.asset("assets/images/Disney.png", width: 200,height: 100, color: Colors.black,), 
            crossFadeState: isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            sizeCurve: Curves.fastOutSlowIn,
            firstCurve: Curves.bounceIn,
            secondCurve: Curves.bounceInOut,

            duration: Duration(seconds: 2)
            ),

            ElevatedButton(onPressed: () {
              reload();
            }, child: Text("Animate")),


            AnimatedOpacity(opacity:my_opacity, duration: Duration(seconds: 2),
            curve: Curves.slowMiddle,
            child: Container(
              width: 200,
              height: 100,
              color: Colors.blue,
            ),
            ),

            ElevatedButton(onPressed: () {
              setState(() {
                 if (isVisible) {
                my_opacity = 0.0;
                isVisible=false; //invisible
              } else {
                my_opacity =1.0; //visible
                isVisible=true;
              }
             
              });
             
            }, child: Text("Change")),

            SizedBox(width: 20,height: 20,),
            // AnimatedContainer(
            //   duration: Duration(seconds: 2),
            //   width: _width ,
            //   curve: Curves.elasticInOut,
            //   height: _height,
            //   //color: bgColor,
            //   decoration: myDecor,
        
            // ),
            // ElevatedButton(onPressed: () {
            //   //_width =100.0;
            //   //_height =200.0;

            
            //   setState(() {
            //         //to toggle now
            //   if (flag) {
            //     _width=100;
            //     _height=200;
            //    // bgColor = Colors.orange;
            //     myDecor = BoxDecoration(
            //       borderRadius: BorderRadius.circular(2),
            //        color: Colors.orange
            //     );
            //     flag =false;
            //   } 
            //   else{
            //     _width=200;
            //     _height=100;
            //     //bgColor= Colors.blueGrey;
            //      myDecor = BoxDecoration(
            //       borderRadius: BorderRadius.circular(2),
            //       color: Colors.blueGrey
            //     );
            //     flag=true;
            //   }
            //   });
            // }, child: Text("Animate"))
          ],
        ),
      )
        ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState


