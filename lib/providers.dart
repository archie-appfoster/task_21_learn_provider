import 'package:flutter/material.dart';
class provide extends ChangeNotifier{
  List<int> numbers =[1,2,3,4,5];
   void add(){
     int j = numbers.last;
     numbers.add(j+1);
     notifyListeners();
   }

}