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
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent),
          titleMedium: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic),
          titleSmall: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              color: Colors.amber),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  @override
  Widget build(BuildContext context) {
    //var arr_name = ["Ram", 'Sita', 'Laxman', 'Dinesh'];
    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          title: Text('Date Time Picker in Flutter'),
          //it is used to recycle memory
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Container(
            width: 400,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Select Date and Time",
                  style: TextStyle(fontSize: 25),
                ),
                ElevatedButton(
                    onPressed: () async {
                      DateTime? datePicked = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2020),
                          lastDate: DateTime(2026));
                      if (datePicked != null) {
                        print(
                            "Date Selected: ${datePicked.day}- ${datePicked.month}- ${datePicked.year}");
                      }
                    },
                    child: Text("Select Date")),

                //FOR SELECTING TIME
                ElevatedButton(
                    onPressed: () async {
                      TimeOfDay? pickedTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                          initialEntryMode: TimePickerEntryMode.dial //or input
                          );
                      if (pickedTime != null) {
                        print(
                            "Time Selected: ${pickedTime.hour}:${pickedTime.minute}");
                      }
                    },
                    child: Text("Select Time")),
              ], //children 1
            ),
          ),
        )); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState
