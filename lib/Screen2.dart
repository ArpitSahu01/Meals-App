import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Title of Widget'),),
      body: const Center(
        child: Text('Hi this is a center',style: TextStyle(fontSize: 20),),
      ),
    );
  }
}