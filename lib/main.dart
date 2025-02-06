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
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons In Flutter'),
        backgroundColor: Colors.purple,
      ),
      body: Center( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            TextButton(
              child: const Text("I'm TextButton."),
              onPressed: () {
                print("Text Button Pressed");
              },
            ), // End of TextButton
            ElevatedButton(
              child: const Text("I'm Elevated Button."),
              onPressed: () {
                print("Elevated Button Pressed");
              },
            ), // End of ElevatedButton
            OutlinedButton(
              child: const Text("I'm Outlined Button."),
              onPressed: () {
                print("Outlined Button Pressed");
              },
            ), // End of OutlinedButton
          ], // End of children list
        ), // End of Column
      ), // End of Center
    ); //end of Scaffold
  } //end of Widget build
} //end of _ContainerPageState
