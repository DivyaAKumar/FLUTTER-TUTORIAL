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

class _MyHomePageState extends State<MyHomePage> {
  var _width = 200.0; //to create pvt field inside dart _ is used before name
  var _height = 100.0;
  var my_opacity = 1.0;
  bool isFirst = true;
  var arrIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13,14,15,16];

  bool isVisible = true;
  bool flag = true;
  Color bgColor = Colors.blueGrey;
  //Decoration myDecor = BoxDecoration(borderRadius: BorderRadius.circular(2));

  @override
  //  void initState() {

  //   super.initState();
  //   Timer(Duration(seconds: 4),() {
  //     reload();
  //   },);
  //  }
  void reload() {
    setState(() {
      if (isFirst) {
        isFirst = false;
      } else {
        isFirst = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gradient as App Background'), //MORE FROM WEB GRADIENTS SITE
      ),
      // (0,0)......(1,0)
      // (0,1).......(1,1)
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
              //   Colors.purple.shade300,
              //   Colors.indigo.shade300,
              //  Colors.blue,
              Color(0xff4facfe),//ff opaque //00 transparent 
              Color(0xff00f2fe)
              ],
              begin: FractionalOffset(1.0, 0.0 ),
              end: FractionalOffset(0.0, 1.0),
             
              ),
            //  gradient: RadialGradient(
            //   colors: [
            //   //   Colors.purple.shade300,
            //   //   Colors.indigo.shade300,
            //   //  Colors.blue,
            //    Color(0xff00f2fe),
            //   Color(0xff4facfe),//ff opaque //00 transparent 
           
            //   ],
            // center: Alignment.bottomCenter,
            //  stops: [0.0,1.0]
            //   )
          ),
          child: Center(
            child: Padding(padding: const EdgeInsets.all(21.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               TextField( 
                //controller: name,
                 decoration: InputDecoration(
                        hintText: "Enter your weight here.",
                          prefixIcon: Icon(Icons.verified_user, color: Colors.white),
                           border: OutlineInputBorder(),
                           
                        ),
                          keyboardType: TextInputType.text,
        
              ),
                  
              const SizedBox(
                width: 20,height: 20,
              ) ,
        
              TextField( 
               // controller: name,
                 decoration: InputDecoration(
                        hintText: "Enter your height here.",
                          prefixIcon: Icon(Icons.verified_user, color: Colors.white),
                           border: OutlineInputBorder(),
                   
                        ),
                          keyboardType: TextInputType.text,
              ),
               
        const SizedBox(
                width: 20,height: 20,
              ) ,
        
              ElevatedButton(onPressed: () {
               
              }, child: Text("Calculate"))
              ],
            ), 
            ),
          ),
        ),
      )

     
    ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState
