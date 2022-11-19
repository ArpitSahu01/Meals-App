import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {

  // final String id;
  // final String title;
  //
  // CategoryMealsScreen({required this.id,required this.title});

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String,String>;
    final categoryTitle = routeArgs['title'] as String;
    return Scaffold(
      appBar: AppBar(title:Text(categoryTitle),),
      body: Center(
        child: Text("These are my selected meals"),
      ),
    );
  }
}
