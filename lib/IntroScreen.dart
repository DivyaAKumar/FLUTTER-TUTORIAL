import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/main.dart';

class IntroScreen extends StatelessWidget{
  var nameFromeHome;
  IntroScreen(this.nameFromeHome);
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("Introductory Screen"),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        Center(child: Text("Welcome To Flutter $nameFromeHome ", style: TextStyle(fontSize: 25),)),
        const SizedBox(height: 20,width: 20,),
        
      ],
    ),
   );
  }
  
}