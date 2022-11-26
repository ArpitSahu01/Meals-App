import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../dummy_data.dart';
import '../models/meal.dart';

class CategoryMealsScreen extends StatefulWidget {

  static const mealRoute = '/category-meals';

  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  // final String id;

  String ? categoryTitle;
  List<Meal> ? displayedMeal;
  var _loadedInitData = false;

  @override
  void didChangeDependencies() {

    if(!_loadedInitData) {
      final routeArgs = ModalRoute
          .of(context)
          ?.settings
          .arguments as Map<String, String>;
      categoryTitle = routeArgs['title'] as String;
      final categoryId = routeArgs['id'] as String;
      displayedMeal = DUMMY_MEALS.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }
  void _removeItem(String mealId){
      setState(() {
        displayedMeal!.removeWhere((element) => element.id == mealId);
      });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title:Text(categoryTitle as String),),
      body: ListView.builder(itemBuilder: (ctx,index){
              return MealItem(
                title: displayedMeal![index].title,
                imageUrl: displayedMeal![index].imageUrl,
                affordability: displayedMeal![index].affordability,
                complexity: displayedMeal![index].complexity,
                duration: displayedMeal![index].duration,
                id: displayedMeal![index].id,
                removeItem: _removeItem,
              );
      } ,itemCount: displayedMeal!.length ,),
    );
  }
}
