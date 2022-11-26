import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  static const routeName = '/filters-screen';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Filters'),),
        drawer: MainDrawer(),
        body: Center(
      child: Text('This is Filter Screen'),
    ));
  }
}
