import 'dart:io';

void main() {
 // VAR AND DYNAMIC
  String name= 'jam';

  //dynamic var- when it's not initialized when creating
  var section; // can store multiple datatypes
  //or dynamic section;
  section='d';

  section =7;

  section= false;//override

  //var- initialized while creating
  var subject = 'maths'; // will store same datatype
  //subject =7; throws error as it implicitly identifies the datatype

  subject ='English';

  //
  //
  //
  //
  //FUNCTIONS
  var myC= myClass();
  myC.printhello(); //function calling
  myC.printhello();

  print(myC.Add(4, 5));
  print(myC.Add(1,5));

  var myName= second();
  myName.printName("my name is divya");
  myName.printName("I am a data science student at BIT Durg");

}
class myClass{

  myClass(){ //default constructor
    print("myClass object created");
  }
void printhello() {  //declaration

  print("hello"); //definition

                 }

int Add(int a,int b){
  int sum;
  sum= a+b;
  return sum;
}
            }

class second{
  void printName(String name){
    print(name);
  }
}



