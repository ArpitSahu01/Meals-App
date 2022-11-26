import 'package:flutter/material.dart';
import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget buildListTile(String text,IconData icon,VoidCallback tapHandler){
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoCondensed',
            fontSize: 26),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Colors.orangeAccent,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Color.fromRGBO(0, 177, 210, 20)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile('Meals', Icons.restaurant,(){
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile('Filters',Icons.settings,(){
            Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
          }),
        ],
      ),
    );
  }
}
