import 'package:flutter/material.dart';
import 'package:meal_finance/meal_card_new.dart';
import 'package:meal_finance/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.viewDetails,
    required this.goToFinance,
  });

  final void Function(Meal) viewDetails;
  final void Function() goToFinance;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int weeklyBudget = 400;
  int currentCartPrice = 0;
  double weeklyBudgetUsed = 0;

  void calculateBudgetUsed() {
    setState(() {
      weeklyBudgetUsed = currentCartPrice / weeklyBudget;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Positioned(
            top: 40,
            right: 30,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle_sharp),
            ),
          ),
          Column(
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
              //------------Weekly budget used-------------
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Color.fromARGB(255, 102, 175, 162),
                    height: 18,
                    width: 400 - 400 * weeklyBudgetUsed,
                  ),
                  Container(
                    color: const Color.fromARGB(255, 227, 237, 232),
                    height: 18,
                    width: 400 * weeklyBudgetUsed,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
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
                height: 550,
                width: 400,
                child: ListView(
                  children: [
                    Text(
                      "Beef",
                      style: TextStyle(
                        color: Color.fromARGB(255, 102, 175, 162),
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      width: 300,

                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: favMeals.length,
                        itemBuilder: (BuildContext context, index) {
                          return MealCardNew(
                            mealData: favMeals[index],
                            viewDetails: widget.viewDetails,
                            imagePath: favMeals[index].imagePath,
                            mealName: favMeals[index].name,
                          );
                        },
                      ),
                    ),

                    //----------------Chicken-----------------
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Chicken",
                      style: TextStyle(
                        color: Color.fromARGB(255, 102, 175, 162),
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      width: 300,

                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: favMeals.length,
                        itemBuilder: (BuildContext context, index) {
                          return MealCardNew(
                            mealData: favMeals[index],
                            viewDetails: widget.viewDetails,
                            imagePath: favMeals[index].imagePath,
                            mealName: favMeals[index].name,
                          );
                        },
                      ),
                    ),
                    //---------------Veggie--------------
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Veggie",
                      style: TextStyle(
                        color: Color.fromARGB(255, 102, 175, 162),
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      width: 300,

                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: favMeals.length,
                        itemBuilder: (BuildContext context, index) {
                          return MealCardNew(
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
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.restaurant),
                    style: IconButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 102, 175, 162),
                    ),
                    iconSize: 30,
                    constraints: BoxConstraints(minHeight: 80, minWidth: 120),
                    padding: EdgeInsets.zero,
                  ),
                  Container(
                    color: Colors.black,
                    width: 1,
                    height: 80,
                  ),
                  IconButton(
                    onPressed: widget.goToFinance,
                    icon: Icon(Icons.attach_money_rounded),
                    iconSize: 35,
                    style: IconButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 102, 175, 162),
                    ),
                    constraints: BoxConstraints(minHeight: 80, minWidth: 120),
                    padding: EdgeInsets.zero,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
