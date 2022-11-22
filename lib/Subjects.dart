import 'package:flutter/material.dart';

class Subjects extends StatelessWidget {
  static const routeName = '/SubjectPage';

  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text('Subjects Page'),),
      body: Center(child: Text('This is $routeArgs page.',style: TextStyle(fontSize: 20),)),
    );
  }
}
