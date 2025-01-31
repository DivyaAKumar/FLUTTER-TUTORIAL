import 'dart:io';

void main(){
  /*print('welcome to dart!');
  stdout.write('Enter your name ');
  var name= stdin.readLineSync();
  print("Welcome, $name!");

  var alex= new Human(); //creating a class object
*/
  //declaration of variable
  int? a;

  //assign
  a = 5;
  print(a);
  a=7;
  print(a);

  //inline declaration
  String name ='Raman';
  print(name);
  int b=7;
  print(b);

  //long number
  BigInt c= BigInt.parse('4684692672048487372');
  print(c);

  //decimal number
  double percent= 99.65;
  print(percent);
  //or var or num
  num percent2= 99.65;
  print(percent2);

  //boolean- is user logged in?
  bool isLogin=false;
  isLogin=true;



}

class Human{
  Human();
}