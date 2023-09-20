import 'package:flutter/material.dart';
import '../models/categories.dart';
import '../models/category.dart';
import '../models/meal.dart';
import '../screens/meals_overview_screen.dart';
import '../widgets/category_item.dart';

class CategoriesOverviewScreen extends StatelessWidget {
  static const routename = 'categoriesScreen';

  const CategoriesOverviewScreen({
    Key? key,
      required this.availableMeals,
  }) : super(key: key);

  final List<Meal> availableMeals;

  void selectCategory(BuildContext context, Category category) {
    
    final filteredMeals =
        availableMeals.where((meal) => (meal.categories.contains(category.id))).toList();
    
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => MealsOverviewScreen(
            filteredMeals: filteredMeals, title: category.title)));
  }

  @override
  Widget build(BuildContext context) {
    final categories = Categories();
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: GridView(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 3 / 2),
              children: categories.items
                  .map((category) => CategoryItem(
                        onselectCategory: () {
                          selectCategory(context, category);
                        },
                        category: category,
                      ))
                  .toList()),
        ),
      ]),
    );
  }
}
