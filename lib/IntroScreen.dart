import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/main.dart';

class IntroScreen extends StatelessWidget{
 
  
  @override
  Widget build(BuildContext context) {
     var name= TextEditingController();
   return Scaffold(
    appBar: AppBar(
      title: Text("Login"),
    ),
    body: Center(
      child: Container(
        width: 270,
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Center(child: Text("Hey user! Please enter your name below.", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.deepOrange),)),
            const SizedBox(height: 20,width: 20,),
            TextField( 
              controller: name,
               decoration: InputDecoration(
                      hintText: "Enter your name here.",
                        prefixIcon: Icon(Icons.verified_user, color: Colors.deepOrange),
                         border: OutlineInputBorder(),
                 
                      ),
                        keyboardType: TextInputType.text,
            ),
            const SizedBox(height: 20,width: 20,),
            ElevatedButton(onPressed: 
            () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(name.text.toString()),));
            }, child: Text("Enter"))
        
            
          ],
        ),
      ),
    ),
   );
  }
  
}