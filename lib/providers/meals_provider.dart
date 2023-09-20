import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/meals.dart';

final mealsProvider = Provider((ref) {
  return Meals();
});