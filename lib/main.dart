import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

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
    var arr_names = ["Divya A Kumar", "Ayushi Dubey","Biji A Kumar","V Anil Kumar","Harshit Kumar"];
    var img_path =["assets/images/profile1.jpg","assets/images/bird.png","assets/images/BIJIKUMAR.jpg","assets/images/ANILKUMAR.jpg","assets/images/happybird.png"];
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile in Flutter'),
        //it is used to recycle memory
        backgroundColor: Colors.purple,
      ),
       body: 
       //NOTE- ListTile can be divided into 3 parts- leading, title & subtitle, Trailing 

        ListView.separated(itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(img_path[index], width: 50,height: 50,),
            subtitle: Text(arr_names[index]),
            title:Text('${index +1}', style: TextStyle(fontSize: 25),) ,
            trailing: Icon(Icons.zoom_out_map_rounded),
          );
        }, separatorBuilder: (context, index) {
          return Divider(height: 50,thickness: 1,);
        }, itemCount: arr_names.length)
       
        
    ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState
