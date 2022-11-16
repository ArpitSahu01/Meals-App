import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Screen1'),backgroundColor: Colors.cyanAccent),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: MediaQuery.of(context).size.width/3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 2/1,
        ),
        children: [],
      ),
    );
  }
}