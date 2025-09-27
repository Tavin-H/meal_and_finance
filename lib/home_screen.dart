import 'package:flutter/material.dart';
import 'package:meal_finance/meal_card.dart';
import 'package:meal_finance/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.viewDetails});

  final void Function(Meal) viewDetails;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "All Meals",
            style: TextStyle(
              color: Color.fromARGB(255, 102, 175, 162),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},

                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 102, 175, 162),
                ),
                child: Text("High protein"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 102, 175, 162),
                ),
                child: Text("Under \$5"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 102, 175, 162),
                ),
                child: Text("Other"),
              ),
            ],
          ),
          SizedBox(
            height: 600,
            width: 400,
            child: ListView.builder(
              itemCount: favMeals.length,
              itemBuilder: (BuildContext context, index) {
                return MealCard(
                  mealData: favMeals[index],
                  viewDetails: widget.viewDetails,
                  imagePath: favMeals[index].imagePath,
                  mealName: favMeals[index].name,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
