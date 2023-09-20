import 'package:flutter/material.dart';
import '../models/category.dart';

class Categories with ChangeNotifier {
  final List<Category> items = [
    Category(
      id: 'c1',
      title: 'Appetizers',
      color: Colors.purple,
    ),
    Category(
      id: 'c2',
      title: 'Entrees',
      color: Colors.red,
    ),
    Category(
      id: 'c3',
      title: 'Sandwiches',
      color: Colors.orange,
    ),
    Category(
      id: 'c4',
      title: 'Cold',
      color: Colors.amber,
    ),
    Category(
      id: 'c5',
      title: 'Hot',
      color: Colors.blue,
    ),
    Category(
      id: 'c6',
      title: 'Soups & Salad Combos',
      color: Colors.green,
    ),
    Category(
      id: 'c7',
      title: 'Fajitas',
      color: Colors.lightBlue,
    ),
    Category(
      id: 'c8',
      title: 'Tacos',
      color: Colors.lightGreen,
    ),
    Category(
      id: 'c9',
      title: 'Enchildas',
      color: Colors.pink,
    ),
    Category(
      id: 'c10',
      title: 'Quiche',
      color: Colors.teal,
    ),
    Category(
      id: 'c11',
      title: 'Green Salads',
      color: Colors.blueGrey,
    ),
  ];
}
