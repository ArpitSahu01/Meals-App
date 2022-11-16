import 'package:flutter/material.dart';
import './Screen1.dart';

void main(){
runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Navigation App',
      home: Screen1(),
    );
  }
}
