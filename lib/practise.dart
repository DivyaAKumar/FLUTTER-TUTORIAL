import 'dart:io';

void main() {

 //LISTS IN DART
  var listNames = [10,20,30,40];
  //Operations
  listNames.add(50);
  print(listNames);

  //blank list
  var names= [];
  print(names);

  //adding elements to last
  names.add('DIVV');
  names.add('ayushi');
  names.add('sana');
  names.add('rish');

  //adding already made list elements to end of another list
  names.addAll(listNames);
  print(names);

  //adding an element at a particular index
  names.insert(3, "piu");
  print(names);

  //adding already made list elements to a particular index of another list
  names.insertAll(5, listNames);
  print(names);

  //updating an element in a list
  names[5]="shreya";
  print(names);

  //replace multiple elements from a list
  //start index, end+1
  listNames.replaceRange(0, 4, [1,2,3,4]);
  print(listNames);

  //remove an element from a list
  names.remove("shreya");
  print(names);
  names.removeLast();
  print(names);
  names.removeAt(0);
  print(names);
  names.removeRange(4, 12);
  print(names);

  //other operations
  print("length: ${names.length}");
  print("reversed: ${names.reversed}");
  print("first: ${names.first}");
  print("last: ${names.last}");
  print("isnotempty: ${names.isNotEmpty}");
  print("isempty: ${names.isEmpty}");
  print("element at 2nd index: ${names.elementAt(2)}");

}



