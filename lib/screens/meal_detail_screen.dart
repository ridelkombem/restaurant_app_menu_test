import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/meal.dart';
import '../providers/favorites_provider.dart';
import '../widgets/build_detail_screen_container.dart';
import '../widgets/build_detail_screen_title.dart';

class MealDetailScreen extends ConsumerWidget {
  static const routename = 'MealsDetailScreen';
  const MealDetailScreen({
    Key? key,
    required this.meal,
  }) : super(key: key);
  final Meal meal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteMeals = ref.watch(favoriteMealsProvider);
    final isFavorite = favoriteMeals.contains(meal);
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const BuildTitle(
              title: 'Ingredients',
            ),
            BuildContainer(
              child: ListView.builder(
                itemCount: meal.ingredients.length,
                itemBuilder: (context, i) => Card(
                  color: Theme.of(context).colorScheme.secondary,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(
                      meal.ingredients[i],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //here we use just read to get value once and not to setup an ongoing listener
          final wasAdded = ref
              .read(favoriteMealsProvider.notifier)
              .toggleMealFavoriteStatus(meal);
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                  wasAdded ? 'Meal added as a favorite' : 'Meal removed')));
        },
        child: Icon(
          isFavorite ? Icons.star : Icons.star_border,
          color: Colors.red,
          size: 30,
        ),
      ),
    );
  }
}

// for stateless we replace it (MealDetailScreen)ConsumerWidget and add ref to the build
// wheras for stateful(TabsScreen) we replace it with ConsumerState Widget which makes the ref generally available