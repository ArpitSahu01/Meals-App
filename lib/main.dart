import 'package:flutter/material.dart';
import '../models/numbers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Calculator'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: (MediaQuery.of(context).size.width)/4,
          childAspectRatio: 1/1,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        padding: const EdgeInsets.all(10),
        children: number.map((val){
          return ElevatedButton(onPressed: (){}, child: Center(
            child: Text(val,style: TextStyle(fontSize: 20),),
          ));
        }).toList(),
      ),
    );
  }
}
