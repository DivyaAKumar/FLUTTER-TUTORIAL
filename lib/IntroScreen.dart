import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/main.dart';

class IntroScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("Introductory Screen"),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        Center(child: Text("You switched to Intro Screen lol ", style: TextStyle(fontSize: 25),)),
        const SizedBox(height: 20,width: 20,),
        
      ],
    ),
   );
  }
  
}