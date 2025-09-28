import 'package:flutter/material.dart';
import 'package:meal_finance/data.dart';

class MealCard extends StatelessWidget {
  const MealCard({
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
    //FAVOURITE COLOR Color.fromARGB(255, 86, 144, 133)
    return SizedBox(
      height: 100,
      width: 100,
      child: Card(
        color: Color.fromARGB(255, 102, 175, 162),
        elevation: 0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 5,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    "data/images/$imagePath",
                    height: 80,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 230,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            mealName,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              viewDetails(mealData);
                            },
                            icon: Icon(
                              Icons.info_outline,
                            ),
                            iconSize: 20,
                            style: IconButton.styleFrom(
                              foregroundColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Decription example blah blah blah",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
