import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {

  static const routeName = '/topTabBar';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: const Text('Top Tab Bar'),
        bottom: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.account_balance),
              text: 'Balance',
            ),
            Tab(
              icon: Icon(Icons.account_circle_rounded),
              text: 'Account',
            ),
            Tab(
              icon: Icon(Icons.ac_unit),
              text: 'Freeze',
            ),
          ],
        ),
        ),
        body: TabBarView(
          children: [
            Text('This is tab one'),
            Text('This is tab second'),
            Text('This is tab third'),
          ],
        ),
      ),

    );
  }
}
