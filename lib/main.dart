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
              Center(child: Text("Flutter State Management")), 
        ), //AppBar           

         body: Container(
          width: double.infinity,
          //child: Text("data---if needed by most or some widgets - then global state needed(app state),data---if needed by single state then local/emphemeral state needed, when we use app state we extract data and store it separately in parent widget (data-ui seperation),data-ui is seoerated for building proper architechture,app architechture- MVP,MVC, MVVM(Model,View,View Model), there is a need for proper architechture,hence global state maintained "),
          child: Text("State Management Guidelines-\nGlobal State (App State): Use when data is needed by most or multiple widgets,\n Local/Ephemeral State: Use when data is required only by a single widget.\nApp State Usage: Extract data and store it separately in the parent widget (Data-UI separation).\n,Data-UI Separation: Essential for building a proper architecture.\n,App Architectures: MVP, MVC, MVVM (Model-View-ViewModel).\n,Need for Proper Architecture: Ensures maintainability and scalability, hence global state is maintained."),
         )
         //data---if needed by most or some widgets - then global state needed(app state)
         //data---if needed by single state then local/emphemeral state needed
         //when we use app state we extract data and store it separately in parent widget (data-ui seperation)
         //data-ui is seoerated for building proper architechture
         //app architechture- MVP,MVC, MVVM(Model,View,View Model)
         //there is a need for proper architechture,hence global state maintained 

         //local/emphemeral state- 
         //stateful widget-for ui changes locally(puuri ui rebuild)
         //stateful builer- only a component to be rebuild

         //global state management-
         //provider package - v. v. imp
         //Cubit/Bloc-bloc for more complex structure 
         //bloc - imp in future
         //riverpod
         //redux
         //getx-easy (imp in past)





            ); //end of Scaffold
  }

} //end of _ContainerPageState
