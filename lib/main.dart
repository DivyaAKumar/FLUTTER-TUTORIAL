import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      home: ContainerPage(),
    );
  } //end of widget build
} //end of MyApp class

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
   String result ="";
  @override
  Widget build(BuildContext context) {
    //var arr_name = ["Ram", 'Sita', 'Laxman', 'Dinesh'];
    var time = DateTime.now();
    var no1Controller = TextEditingController();
    var no2Controller = TextEditingController();
 
    return Scaffold(
        appBar: AppBar(
          title: Text('Basic Calculator in Flutter'),
         // backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Container(
            color: Colors.lightBlueAccent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no1Controller,
                    
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no2Controller,
                  ),
              
                  SizedBox(height: 20, width: 20,),
              
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  
                      children: [
                        ElevatedButton(onPressed: () {
                           var no1 = int.parse(no1Controller.text.toString());
                           var no2 = int.parse(no2Controller.text.toString());
                           var sum = no1+ no2;

                           result = "The Sum of $no1 and $no2 is $sum";

                           setState(() {
                            
                           });


                        }, child: Text("Add")),
                        ElevatedButton(onPressed: () {
                           var no1 = int.parse(no1Controller.text.toString());
                           var no2 = int.parse(no2Controller.text.toString());
                           var diff = no1- no2;
                          
                           result = "The difference of $no1 and $no2 is $diff";

                           setState(() {
                             
                           });

                           

                        }, child: Text("Sub")),
                          
                        ElevatedButton(onPressed: () {
                           var no1 = int.parse(no1Controller.text.toString());
                           var no2 = int.parse(no2Controller.text.toString());
                           var product = no1* no2;

                           result= "The product of $no1 and $no2 is ${product.toStringAsFixed(2)}";

                           setState(() {
                             
                           });
                        }, child: Text("Mul")),
                          
                        ElevatedButton(onPressed: () {
                           var no1 = int.parse(no1Controller.text.toString());
                           var no2 = int.parse(no2Controller.text.toString());
                           var div = no1/no2;
                          
                           result= "$no1 and $no2 when divided gives ${div.toStringAsFixed(2)}";

                           setState(() {
                            

                           });
                        }, child: Text("Div"))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("$result", style: TextStyle(fontSize: 25),)),
                  ),
                ],
              ),
            ),
          ),
        )

        ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState


