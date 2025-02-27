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
  var arrIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];

  var arrData = [
    {'name': 'Alice', 'mobno': '7898114074', 'unread': '1'},
    {'name': 'Michael', 'mobno': '9234567890', 'unread': '5'},
    {'name': 'Sophia', 'mobno': '8123456789', 'unread': '2'},
    {'name': 'James', 'mobno': '7567891234', 'unread': '3'},
    {'name': 'Alice', 'mobno': '7898114074', 'unread': '1'},
    {'name': 'Michael', 'mobno': '9234567890', 'unread': '5'},
    {'name': 'Sophia', 'mobno': '8123456789', 'unread': '2'},
    {'name': 'James', 'mobno': '7567891234', 'unread': '3'},
    {'name': 'Alice', 'mobno': '7898114074', 'unread': '1'},
    {'name': 'Michael', 'mobno': '9234567890', 'unread': '5'},
    {'name': 'Sophia', 'mobno': '8123456789', 'unread': '2'},
    {'name': 'James', 'mobno': '7567891234', 'unread': '3'},
    {'name': 'Alice', 'mobno': '7898114074', 'unread': '1'},
    {'name': 'Michael', 'mobno': '9234567890', 'unread': '5'},
    {'name': 'Sophia', 'mobno': '8123456789', 'unread': '2'},
    {'name': 'James', 'mobno': '7567891234', 'unread': '3'},

  ];

//   var arrData1 = [
//     {
//      'name': 'Alice',
//      'mobno': '7898114074',
//      'unread' : '1',
//     },

// 'Alice',
// 'Michael',
// 'Sophia',
// 'James',
// 'Olivia',
// 'Daniel',
// 'Isabella',
// 'Ethan',
// 'Emma',
// 'Alexander',
// 'Mia',
// 'Benjamin',
// 'Charlotte',
// 'William',
// 'Amelia',

//   ];
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
          title:
              Text('Mapping lists to widgets'), //MORE FROM WEB GRADIENTS SITE
        ),
        // (0,0)......(1,0)
        // (0,1).......(1,1)
        body: Container(
            child: ListView(
          children: arrData
              .map((value) => ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text(value['name']
                        .toString()), 
                    subtitle: Text(value['mobno'].toString()),
                    trailing: CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.blue[200],
                      child: Text(value['unread'].toString(),style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),)
                      ),
                  ))
              .toList(),
        )

            //   // child: ListView(
            //   //   children: arrData.map((value) {
            //   //     return Padding(
            //   //       padding: const EdgeInsets.all(8.0),
            //   //       child: Container(
            //   //         decoration: BoxDecoration(
            //   //           borderRadius: BorderRadius.circular(20),
            //   //            color: Colors.blueAccent,
            //   //         ),
            //   //         width: double.infinity,
            //   //         height: 100,
            //   //         child: Center(child: Text(${value}, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),), ),

            //   //       ),
            //   //     );
            //   //   },).toList()
            // ),
            )); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState
