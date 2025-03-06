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
 
  //late Animation _animation; // _ to make class private
  late AnimationController _animationController;
  var nameController =TextEditingController();
  static const String KEYNAME ="name";
  var nameValue = "No value Saved";


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValue();
  }
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
        appBar: AppBar(
          title:
              Text('Shared Preference'), //for storing locally persistent data(ex- skipping login screen each time user logs in)
        ), //AppBar           

         body: 
         Center(
           child: Container(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  
                  
            decoration: InputDecoration(
            label: Text("Name"),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 4),
              borderRadius: BorderRadius.circular(12),
            ),
                   ),
                  
                ),
                ElevatedButton(onPressed: () async { 
                  //var name = nameController.text.toString();

                  //since we dont know when will the data come hence we handle it asynchronously hence we use async and await 


                  var prefs = await SharedPreferences.getInstance();

                  //prefs.setString( "name", name );
                  prefs.setString(KEYNAME, 
                  nameController.text.toString());


                  
                }, child: Text("Save")),
                SizedBox(height: 11,),
                Text(nameValue)


              ],
            ),
           ),
         )
      
            ); //end of Scaffold
  }
  //init state can never be handled asynchronously hence we create get value()
  void getValue() async {
    var prefs= await SharedPreferences.getInstance();

    var getName = prefs.getString(KEYNAME);

    
    setState(() {
      nameValue =  getName  ?? "No value Saved"; 

    });
  } //end of Widget build

} //end of _ContainerPageState
