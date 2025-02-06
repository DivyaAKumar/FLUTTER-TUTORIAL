import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
    return Scaffold(
      body: Center( // Changed from { to (
        child: Container( // Added 'child:' to specify the child of the Container
          height: 500,
          width: 500,
          color: Colors.blue,
          child: const Center( // Added const for the Text widget
            child: Text("This is a container"),
          ), //end of Text
        ), //end of Container
      ), //end of Center
    ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState
