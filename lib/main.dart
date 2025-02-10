import 'dart:async';

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
    var arrCount = ["one",'Two',"three",'four','five'];
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView (normal, ListView.builder, Listview.separated)In Flutter'),
        //it is used to recycle memory
        backgroundColor: Colors.purple,
      ),
       body:  Center(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: ListView.separated(itemBuilder: (context, index) {
             return Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(arrCount[index], style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300) ,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(arrCount[index], style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300) ,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(arrCount[index], style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300) ,),
                )
              ],
             );
           }, separatorBuilder: (context,index){
            return Divider(height: 50, thickness: 3,);
           
           }, itemCount: arrCount.length),
         ),
       )
      // Center(
      //    child: Padding(
      //      padding: const EdgeInsets.all(8.0),
      //      child: ListView.separated(itemBuilder: (context, index) {
      //        return Text(arrCount[index], style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300) ,);
      //      }, separatorBuilder: (context,index){
      //       return Divider(height: 50, thickness: 3,);
           
      //      }, itemCount: arrCount.length),
      //    ),
      //  )
       
       
       
       
       
       //For dynamically passing data of list
      //  ListView.builder(itemBuilder: (context, index) {
      //    return Text(arrCount[index], style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300) ,);
      //  },
      //  itemCount: arrCount.length,
      //  itemExtent: 80,
      //  scrollDirection: Axis.horizontal,
      //  )






      // Center(
      //   child: ListView(
      //     scrollDirection: Axis.horizontal,
      //     reverse: true,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text("One", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),),
      //       ),
      //        Padding(
      //          padding: const EdgeInsets.all(8.0),
      //          child: Text("Two", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),),
      //        ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text("Three", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),),
      //         ),
      //          Padding(
      //            padding: const EdgeInsets.all(8.0),
      //            child: Text("Four", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),),
      //          ),
      //           Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: Text("Five", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),),
      //           )
      //     ],
      //   ),
      // )
    ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState
