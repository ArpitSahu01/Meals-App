import 'package:flutter/material.dart';
import 'package:meals_app/widgets/meal_item.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {

  static const mealRoute = '/category-meals';
  // final String id;
  // final String title;
  //
  // CategoryMealsScreen({required this.id,required this.title});

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String,String>;
    final categoryTitle = routeArgs['title'] as String;
    final categoryId = routeArgs['id'] as String;
    final categoryMeal = DUMMY_MEALS.where((meal){
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(title:Text(categoryTitle),),
      body: ListView.builder(itemBuilder: (ctx,index){
              return MealItem(
                title: categoryMeal[index].title,
                imageUrl: categoryMeal[index].imageUrl,
                affordability: categoryMeal[index].affordability,
                complexity: categoryMeal[index].complexity,
                duration: categoryMeal[index].duration,
              );
      } ,itemCount: categoryMeal.length ,),
    );
  }
}
