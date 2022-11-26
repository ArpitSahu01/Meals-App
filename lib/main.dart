import 'package:flutter/material.dart';
import './dummy_data.dart';
import './models/meal.dart';
import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/tabs_screen.dart';
import './screens/filters_screen.dart';

void main(){
runApp(MyApp());
}

class MyApp extends StatefulWidget{

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

   Map<String,bool> _filters = {
     'gluten': false,
     'lactose': false,
     'vegan':false,
     'vegetarian':false,
   };

   List<Meal> _availableMeal = DUMMY_MEALS;

   void _setFilters (Map<String,bool> filterData){
        setState(() {
          _filters = filterData;
          _availableMeal = DUMMY_MEALS.where((meal){
            if(_filters['gluten']==true && !meal.isGlutenFree){
              return false;
            }
            if(_filters['lactose']==true && !meal.isLactoseFree){
              return false;
            }
            if(_filters['vegan']==true && !meal.isVegan){
              return false;
            }
            if(_filters['vegetarian']==true && !meal.isVegetarian){
              return false;
            }
            return true;
          }).toList();
        });
   }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'DeliMeals',
        theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch( primarySwatch: Colors.lightBlue ).copyWith(secondary: Colors.amber),
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
        CategoryMealsScreen.mealRoute: (ctx)=>CategoryMealsScreen(_availableMeal),
        MealDetailScreen.routeName: (ctx)=>MealDetailScreen(),
        FilterScreen.routeName : (ctx)=>FilterScreen(_filters,_setFilters),
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

