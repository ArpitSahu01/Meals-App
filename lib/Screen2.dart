import 'package:flutter/material.dart';
import './Screen3.dart';

class Screen2 extends StatelessWidget {

  void changeScreen3(BuildContext ctx, String title) {
    Navigator.of(ctx).pushNamed(
      '/Screen3',arguments: title
    );
  }

  @override
  Widget build(BuildContext context) {

    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String,String>;
    final title = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title:  Text(title as String),
      ),
      body: Column(
        children: [
          const Text(
            'Hi this is a center',
            style: TextStyle(fontSize: 20),
          ),
          ElevatedButton(
              onPressed: () => changeScreen3(context,title),
              child: const Text('Go to Screen 3')),
        ],
      ),
    );
  }
}
