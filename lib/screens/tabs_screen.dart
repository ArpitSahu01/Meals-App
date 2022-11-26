import 'package:flutter/material.dart';
import './favorites_screen.dart';
import './categories_screen.dart';
import '../widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabsScreen> {
  final List<Map<String,Object>> _pages = [
    {'page': CategoriesScreen(),'title':'Categories'},
    {'page': FavoriteScreen(),'title':'Your Favorites'},
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title'] as String),
      ),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      drawer: MainDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.indigo,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.orangeAccent,
        currentIndex: _selectedPageIndex,
       // type: BottomNavigationBarType.shifting,
        
        items: [
           BottomNavigationBarItem(
       //     backgroundColor: Colors.indigo,
            label: 'Category',
            icon: Icon(Icons.category),
          ),
          BottomNavigationBarItem(
      //        backgroundColor: Colors.indigo,
              icon: Icon(Icons.star),
              label: 'Favorites'),
        ],
      ),
    );
  }
}
