import 'dart:io';

void main() {

  //CONDITIONAL PROGRAMMING

  var a = 100;
  var b= 30;
  if(a>=100 || b>100){
    print("hello");
  } else if(a<=30){
    print("amigo");
  } else{
    print("adios amigos");
  }

  //LOOPS IN DART

 //for loop
  for(int i=0; i<10; i++){
    print("$i increment");
  }

 //while loop
  int j =0;
  while(j <=10){
    print("Increment $j");
    j++;
  }

  //do while
  int num= 5;
  do{
    print("this is $num");
    num++;
  } while(num<=20);
}



