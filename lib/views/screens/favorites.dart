import 'package:flutter/material.dart';
import '../../views/widgets/meal_item.dart';

import '../../models/meal.dart';

class Favorites extends StatelessWidget {
  final List<Meal> favoriteMeals;
  Favorites(this.favoriteMeals);
  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Scaffold(
        body: Center(
          child: Text('You have no favorites yet - start adding some ! '),
        ),
      );
    } else {
      return Scaffold(
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              id: favoriteMeals[index].id,
              affordability: favoriteMeals[index].affordability,
              complexity: favoriteMeals[index].complexity,
              duration: favoriteMeals[index].duration,
              imageUrl: favoriteMeals[index].imageUrl,
              title: favoriteMeals[index].title,
            );
          },
          itemCount: favoriteMeals.length,
        ),
      );
    }
  }
}
