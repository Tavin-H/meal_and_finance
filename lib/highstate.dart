import 'package:flutter/material.dart';
import 'package:meal_finance/home_screen.dart';
import 'package:meal_finance/data.dart';
import 'package:meal_finance/meal_screen.dart';

class Highstate extends StatefulWidget {
  const Highstate({super.key});

  @override
  State<Highstate> createState() => _HighstateState();
}

class _HighstateState extends State<Highstate> {
  void viewDetails(Meal meal) {
    setState(() {
      activeScreen = MealScreen(
        goHome: goHome,
        mealData: meal,
      );
    });
  }

  void goHome() {
    setState(() {
      activeScreen = HomeScreen(viewDetails: viewDetails);
    });
  }

  Widget? activeScreen;
  @override
  void initState() {
    setState(() {
      activeScreen = HomeScreen(viewDetails: viewDetails);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white,
            const Color.fromARGB(255, 229, 255, 245),
          ],
        ),
      ),
      child: activeScreen,
    );
  }
}
