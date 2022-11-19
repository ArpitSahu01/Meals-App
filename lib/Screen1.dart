import 'package:flutter/material.dart';
import './dummy_data.dart';
import './Screen2.dart';

class Screen1 extends StatelessWidget {

  void changeScreen2(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return Screen2();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Screen1'), backgroundColor: Colors.cyanAccent),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: MediaQuery.of(context).size.width / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 2 / 2,
          ),
          children: DUMMY_CATEGORIES.map((val) {
            return InkWell(
              onTap: ()=>changeScreen2(context),
              splashColor: val.color,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: val.color),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    val.title,
                    style: const TextStyle(fontSize: 25),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
