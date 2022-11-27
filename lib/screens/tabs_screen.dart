import 'package:flutter/material.dart';
import './favorites_screen.dart';
import './categories_screen.dart';
import '../widgets/main_drawer.dart';
import '../models/meal.dart';

class TabsScreen extends StatefulWidget {

  final List<Meal> favoriteMeals;
  TabsScreen(this.favoriteMeals);


  @override
  State<TabsScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabsScreen> {

  List<Map<String,Object>>  _pages=[];
  int _selectedPageIndex = 0;

  @override
  void initState() {
     _pages = [
      {'page': CategoriesScreen(),'title':'Categories'},
      {'page': FavoriteScreen(widget.favoriteMeals),'title':'Your Favorites'},
    ];

    super.initState();
  }

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
