import 'package:flutter/material.dart';
import './Subjects.dart';

class Page2 extends StatelessWidget {
  static const routeName = '/Page2';

  final subjects = [
    'English',
    'Math',
    'Physics',
    'Chemistry',
    'Material Science',
    'Structure of Materials'
  ];

  void SubjectsNavigator(BuildContext ctx,String subjectName){
    Navigator.of(ctx).pushNamed(Subjects.routeName,arguments: subjectName );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          height: 200,
          width: 200,
          child: ListView.builder(
              itemBuilder: (ctx, index) {
                return Container(
                  height: 50,
                  color: Colors.cyan,
                  child: InkWell(
                    onTap: ()=> SubjectsNavigator(context, subjects[index]),
                     child: Card(
                      child: Center(child: Text(subjects[index],)),
                    ),
                  ),
                );
              },
              itemCount: subjects.length),
        ),
      ),
    );
  }
}
