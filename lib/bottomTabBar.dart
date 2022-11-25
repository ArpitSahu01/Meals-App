import 'package:flutter/material.dart';

class BottomTab extends StatefulWidget {

  static const routeName = '/bottomTabBar';

  @override
  State<BottomTab> createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {

  int _selectedndex = 0;

  List<Widget> _pages =[
    Center(child: Text('This is Amount Tab')),
    Center(child: Text('This is User Tab')),
    Center(child: Text('This is Person Tab')),
  ];

  void selectPage(int index){
    setState(() {
      _selectedndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Tab Bar'),
      ),
      body: _pages[_selectedndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.cyan,
        selectedItemColor: Colors.purpleAccent,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedndex,
        onTap: selectPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: 'Amount',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_rounded),
              label: 'User'),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility), label: 'Person')
        ],
      ),
    );
  }
}
