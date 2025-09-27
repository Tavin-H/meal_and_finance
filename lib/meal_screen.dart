import 'package:flutter/material.dart';
import 'package:meal_finance/data.dart';

class MealScreen extends StatefulWidget {
  const MealScreen({super.key, required this.mealData, required this.goHome});

  final Meal mealData;
  final void Function() goHome;

  @override
  State<MealScreen> createState() => _MealScreenState();
}

class _MealScreenState extends State<MealScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 40,
          left: 30,
          child: IconButton(
            onPressed: widget.goHome,
            icon: Icon(Icons.arrow_back_ios_new),
            style: IconButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 102, 175, 162),
            ),
          ),
        ),

        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 500,
                width: 350,
                child: Card(
                  color: Color.fromARGB(255, 102, 175, 162),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(10),
                        child: Image.asset(
                          'data/images/${widget.mealData.imagePath}',
                          width: 300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
