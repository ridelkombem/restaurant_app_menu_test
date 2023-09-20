import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/meal.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);
  bool toggleMealFavoriteStatus(Meal meal) {
    
    final mealIsFavorite = state.contains(meal);
     //contains all the meals
    if (mealIsFavorite) {
      state.where((m) => m.id != meal.id).toList();
      return false;
      // to remove meal
      //the inequality returns false and such those values are are removed from list because they are not favorite
      //if value was true it will be added to list
    } else {
      
      state = [...state, meal];
      return true;
      //to keep meal
      //to keep all the existing list items and add a new one which is meal in this case
    }
  }
}

final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
  return FavoriteMealsNotifier();
});
    //ref does not change and instance of the FavoriteMealsNotifier(); returned above does not change