import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    final agrsRecieved = ModalRoute.of(context)?.settings.arguments;
    final title = agrsRecieved as String;
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: const Center(
        child: Text('This is Screen 3'),
      ),
    );
  }
}