import 'package:flutter/material.dart';
import './Screen3.dart';
import './Screen2.dart';
import './Screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation App',
      home: Screen1(),
      routes: {
        '/Screen2': (_) => Screen2(),
        '/Screen3': (_)=> Screen3(),
      },
    );
  }
}
