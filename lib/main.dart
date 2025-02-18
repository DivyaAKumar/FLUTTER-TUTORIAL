import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/ui_helper/util.dart';
import 'package:intl/intl.dart';

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
  var emailText= TextEditingController();
  var passwordText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //var arr_name = ["Ram", 'Sita', 'Laxman', 'Dinesh'];
    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          title: Text('TextField in Flutter(Text Input Widget)'),
         // backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailText,
                  //enabled: false,
                  decoration: InputDecoration(
                    hintText: "Enter Your Email",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.orange,
                        width: 3
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      )
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2,
                      )
                    ),
                    //suffixText: "Hint: Your dog's name.",
                    suffixIcon: IconButton(onPressed: () { }, 
                    icon: Icon(Icons.admin_panel_settings_outlined, color: Colors.blue,)
                    ),
                    prefixIcon: Icon(Icons.email , color: Colors.blue,)
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(11),
                    //   borderSide: BorderSide(
                    //     color: Colors.black
                    //   )
                    // )

                  )
                ),
                Container(
                  height: 11,
                ),
                 TextField(
                  keyboardType: TextInputType.number,
                  controller: passwordText,
                  obscureText: true, // to hide password
                  obscuringCharacter: "*", //character to use for hiding the password
                  decoration: InputDecoration(
                    hintText: "Enter Your Password",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.orange,
                        width: 2,
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2
                      )
                    ) ,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2,
                      )
                    )
                  )
                ),
                ElevatedButton(onPressed: () {
                  String userEmail = emailText.text.toString();
                  String userPwd = passwordText.text.toString();
                  print("Email: $userEmail and Password: $userPwd");
                }, child: Text("Login"))
              ],
            ),
          ),
        )
        ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState
