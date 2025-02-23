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
      home: IntroScreen(),
    );
  } //end of widget build
} //end of MyApp class

class MyHomePage extends StatefulWidget {
  // const MyHomePage({super.key});
  var nameFromIntro;
  MyHomePage(this.nameFromIntro);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    var result = "";
  var nameFromIntro; 
  void initState() {
    super.initState();
    nameFromIntro = widget.nameFromIntro; 
  }

  @override
  
  RangeValues values = RangeValues(0, 100);


   
  @override
  Widget build(BuildContext context) {
    //var arr_name = ["Ram", 'Sita', 'Laxman', 'Dinesh'];
    var time = DateTime.now();
    var wtController = TextEditingController();
    var ftController = TextEditingController();
    var inController = TextEditingController();
  

    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
    //var no2Controller = TextEditingController();
 
    return Scaffold(
        appBar: AppBar(
          
          title: Text('BMI Calculator'),
           
        ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text("Welcome ${nameFromIntro}!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.deepOrangeAccent),
              )
            
              ),
              SizedBox(width: 50,height: 50,),
              Container(
                width: 270,
                height: 250,
                child: Column(
                  children: [
                    TextField(
                      controller: wtController,
                      decoration: InputDecoration(
                        label: Text("Enter your Weight(In Kg)"),
                        prefixIcon: Icon(Icons.line_weight),
                         border: OutlineInputBorder(),
                  errorStyle: TextStyle(color: Colors.red),
                      ),
                      keyboardType: TextInputType.numberWithOptions(),
                     
                    ), 
                    SizedBox(width: 50,height: 20,),
                    TextField(
                      controller: ftController,
                      decoration: InputDecoration(
                        label: Text("Enter your height(In feet)"),
                        prefixIcon: Icon(Icons.height),
                         border: OutlineInputBorder(),
                  errorStyle: TextStyle(color: Colors.red),
                      ),
                      keyboardType: TextInputType.numberWithOptions()
                    ),
                    SizedBox(width: 50,height: 20,),
                    TextField(
                      controller: inController,
                      decoration: InputDecoration(
                        label: Text("Enter your height(In Inches)"),
                        prefixIcon: Icon(Icons.height),
                         border: OutlineInputBorder(),
                  errorStyle: TextStyle(color: Colors.red),
                      ),
                      keyboardType: TextInputType.numberWithOptions()
                      
                    ),
                  ],
                ),
              ),
              ElevatedButton(onPressed: () {
                
                var wt = wtController.text.toString();
                var ft= ftController.text.toString();
                var inch = inController.text.toString();
          
                if(wt!= "" && ft!="" && inch!=""){
                    //Bmi calculation 
                    var iWt = int.parse(wt);
                    var ift = int.parse(ft);
                    var iInch = int.parse(inch);
          
                    var tInch = (ift*12) + iInch;
          
                    var tcm = tInch * 2.54;
          
                    var tm = tcm/100;
          
          
                    var bmi = iWt/(tm*tm);
                    
          
                    if (18<=bmi && bmi <= 25) {
                      setState(() {
                        result = "Your bmi is ${bmi.toStringAsFixed(2)}, It's Normal.";
                      }
                      );
                      
                    }
                    else if(bmi>25){
                      setState(() {
                        result = "Your bmi is ${bmi.toStringAsFixed(2)}, You're Overweight.";
                      });
          
                    }
                    else if(bmi>25 && bmi <=29){
                      setState(() {
                        result= "Your bmi is ${bmi.toStringAsFixed(2)}, You're Underweight.";
                      });
                    }
                   else{
                    setState(() {
                      result= "Your bmi is ${bmi.toStringAsFixed(2)}, You're Obese.";
                    });
                   }
          
          
                }
                else{
                  setState(() {
                    result= "Please fill all the required fields!";
                  });
                }
              }, child: Text("Calculate")),
          
               SizedBox(width: 50,height: 30,),
          
              Text(result, style: TextStyle(fontSize: 20),),
            ],
          
          ),
        ),
      ),
        ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState


