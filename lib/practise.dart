import 'dart:io';

void main() {

 //MAPS IN DART- to store multiple different data type in key value pair, and use key to retrieve the value 
                //flexible and mutable, keys should be unique- keys are case-sensitive
//method 1
//example 1
  var map_name = {
    'key1' : "value 1",
    'key2' : 2,
    'key3' :3.0,
    'key4' : true
  };
  
print(map_name);
print(map_name['key2']);
print(map_name['key5']);

map_name['key1'] = "RAMAN";
print(map_name['key1']);

map_name['KEY1'] = "RAM";
print(map_name['KEY1']);

//example 2
  var emp_name = {
    'Name' : "Value",
    'Experience' : 2,
    'Rating' :3.0,
    'Bachelor' : true
  };

  print(emp_name);

  //method 2
  var mapName = Map();
  mapName['Name'] = "Raman";
  mapName['Exp'] = 2;
  mapName['rating'] = 5;
  mapName['Bachelor?'] = false;
  print(mapName);

  //operations
  print(mapName.isNotEmpty);
  print(mapName.isEmpty);
  print(mapName.keys);
  print(mapName.length);
  print(mapName.values);
  print(mapName.containsKey("Name"));
  print(mapName.containsValue("Ram"));
  print(mapName.remove('Bachelor?'));
  print(mapName);

}



