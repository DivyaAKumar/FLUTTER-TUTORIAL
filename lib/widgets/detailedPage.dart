import 'package:flutter/material.dart';

class Detailedpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Detail'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 50, 6, 170),
        child: Center(child: Hero(tag: 'disney', child: Image.asset("assets/images/Disney.png"))),
      ),
    );
  }
 

}