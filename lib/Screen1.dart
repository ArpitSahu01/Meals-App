import 'package:flutter/material.dart';
import './dummy_data.dart';

class Screen1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('Screen1'), backgroundColor: Colors.cyanAccent),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: MediaQuery.of(context).size.width / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 2 / 1,
          ),
          children: DUMMY_CATEGORIES.map((val) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: val.color),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  val.title,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
