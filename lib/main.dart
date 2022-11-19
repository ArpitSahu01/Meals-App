import 'package:flutter/material.dart';
import './category_meals_screen.dart';
import './categories_screen.dart';

void main(){
runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'DeliMeals',
        theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightBlue).copyWith(secondary: Colors.amber),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: const TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),
          bodyText2: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1)
          ),

        ),

    ),
      // home: CategoriesScreen(),
      routes: {
        '/': (ctx)=>CategoriesScreen(),
        CategoryMealsScreen.mealRoute: (ctx)=>CategoryMealsScreen(),
      },
    );
  }

}

