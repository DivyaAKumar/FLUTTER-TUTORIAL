import 'dart:io';

void main() {

  //FINAL AND CONSTANT

  //final name = 'Raman';
  // name = 'Ramanujan'; //throws error as final value remains unchanged - cant be reassigned
  //print(name);

  final String name;
  name= 'Raman';

  //name = "dhihd";
  print(name);

//final var and final dynamic can be overridden


//CONSTANT- value should be assigned then and there only
const new_name = "Raman";
//name= "Ram"; // cant be reassigned
print(new_name);

/*var names;
names = [
  "Ram",
  "Divv",
  "ayushi"
];

names =  [1,2,3,4];*/

final marks = [
  1,
  2,
  3,
  4
];

//marks =[2,3,4,5];
print(marks);

marks.add(3); // doesnt throw error as element can still be added
print(marks);

const const_marks = [
    1,
    2,
    3,
    4
  ];

//const_marksmarks.add(3); // throws error as now further element can be added after const
print(const_marks);
}



