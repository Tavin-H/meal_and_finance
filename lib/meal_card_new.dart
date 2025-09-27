import 'package:flutter/material.dart';
import 'package:meal_finance/data.dart';

class MealCardNew extends StatelessWidget {
  const MealCardNew({
    super.key,
    required this.imagePath,
    required this.mealName,
    required this.viewDetails,
    required this.mealData,
  });

  final String imagePath;
  final String mealName;
  final Meal mealData;
  final void Function(Meal) viewDetails;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: 150,
      child: Card(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                "data/images/$imagePath",
                height: 130,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
