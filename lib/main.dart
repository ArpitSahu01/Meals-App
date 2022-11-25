import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/tabs_screen.dart';

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
        '/': (ctx)=>TabsScreen(),
        CategoryMealsScreen.mealRoute: (ctx)=>CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx)=>MealDetailScreen(),
      },
      onGenerateRoute: (settings){
        // print(settings.arguments);
        // print(settings.name);
        // return MaterialPageRoute(builder: (ctx)=> CategoriesScreen());
      },
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (ctx)=> CategoriesScreen());
      },
    );
  }

}

