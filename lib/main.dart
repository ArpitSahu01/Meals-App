import 'package:flutter/material.dart';
import './topTabBar.dart';
import './bottomTabBar.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabApp',
      home: HomePage(),
      routes: {
        TopBar.routeName : (ctx)=>TopBar(),
        BottomTab.routeName : (ctx)=>BottomTab(),
      },
    );
  }
}

class HomePage extends StatelessWidget {

 void topTabBar(BuildContext context){
   Navigator.of(context).pushNamed(TopBar.routeName);
 }

 void bottomTabBar(BuildContext context){
   Navigator.of(context).pushNamed(BottomTab.routeName);
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Container(
          height: 600,
          width: 200,
          child: Column(
            children: [
              InkWell(
                onTap: ()=>topTabBar(context),
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
                  height: 200,
                  width: 200,
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    color: Colors.orangeAccent,
                    child: Center(
                        child: Text(
                      'Top Tab Bar',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),

              InkWell(
                onTap: ()=>bottomTabBar(context),
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    color: Colors.indigoAccent,
                    child: Center(
                        child: Text(
                      'Bottom Tab Bar',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
