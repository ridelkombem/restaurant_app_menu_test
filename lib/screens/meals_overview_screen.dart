import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../screens/meal_detail_screen.dart';
import '../widgets/meal_item.dart';

class MealsOverviewScreen extends StatelessWidget {
  const MealsOverviewScreen({
    Key? key,
    required this.filteredMeals,
    this.title,
  }) : super(key: key);

  final List<Meal> filteredMeals;
  final String? title;

  void onSelectMeal(BuildContext context, Meal meal) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => MealDetailScreen(
              meal: meal,
            )));
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Column(children: [
      Expanded(
        child: ListView.builder(
          itemCount: filteredMeals.length,
          itemBuilder: (BuildContext context, int i) => MealItem(
            filteredMeal: filteredMeals[i],
            selectMeal: (Meal filteredMeal) {
              onSelectMeal(context, filteredMeals[i]);
            },
          ),
        ),
      ),
    ]);

    if (filteredMeals.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Uh oh....nothing here!',style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 30),
              
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Try selecting a different category!',style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 20),
              
            )
          ],
        ),
      );
    }


     if (title == null) {
      return content;
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(title!),
        ),
        body: content);
  }
}
