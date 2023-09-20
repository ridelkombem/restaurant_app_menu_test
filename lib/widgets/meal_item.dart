import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  const MealItem({
    Key? key,
    required this.filteredMeal,
    required this.selectMeal,
  }) : super(key: key);

  final Meal filteredMeal;
  final void Function(Meal filteredMeal) selectMeal;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectMeal(filteredMeal);
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(filteredMeal.imageUrl,
                      height: 250, width: double.infinity, fit: BoxFit.cover),
                ),
                Positioned(
                    bottom: 20,
                    right: 10,
                    child: Container(
                      width: 300,
                      color: Colors.black54,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 20),
                        child: Text(
                          filteredMeal.title,
                          style: const TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 26,
                            color: Colors.white,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.attach_money),
                      const SizedBox(
                        width: 6,
                      ),
                      Text('${filteredMeal.price ?? 0.0} price')
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.work),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                          '${filteredMeal.complexity.name[0].toUpperCase() + filteredMeal.complexity.name.substring(1)} ')
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.money),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                          '${filteredMeal.affordability.name[0].toUpperCase() + filteredMeal.affordability.name.substring(1)} ')
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
