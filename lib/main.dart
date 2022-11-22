import 'package:flutter/material.dart';
import './Page2.dart';
import './Subjects.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practise2',
      home: MyHome(),
      routes: {
        Page2.routeName: (ctx)=> Page2(),
        Subjects.routeName : (ctx)=> Subjects(),
      },
    );
  }
}

class MyHome extends StatelessWidget {

  void page2Navigation(BuildContext ctx){
    Navigator.of(ctx).pushNamed(
      Page2.routeName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
          child: Container(
        height: 200,
        child: Column(
          children: [
            const Text(
              'Lets got to page 2',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: ()=>page2Navigation(context),
              child: const Text(
                'Page2',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
