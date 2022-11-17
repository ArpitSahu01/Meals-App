import 'package:flutter/material.dart';
import './Screen3.dart';

class Screen2 extends StatelessWidget{

  void changeScreen3(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return Screen3();
    }));
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Title of Widget'),),
      body:  Column(
        children: [
          const Text('Hi this is a center',style: TextStyle(fontSize: 20),),
          ElevatedButton(onPressed: ()=>changeScreen3(context), child: const Text('Go to Screen 3')),
        ],
      ),
    );
  }
}