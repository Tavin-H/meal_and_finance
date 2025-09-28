import 'package:flutter/material.dart';
import 'package:meal_finance/data.dart';

class FinanceScreen extends StatefulWidget {
  const FinanceScreen({super.key, required this.goHome});
  final void Function() goHome;

  @override
  State<FinanceScreen> createState() => _FinanceScreenState();
}

class _FinanceScreenState extends State<FinanceScreen> {
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
        Positioned(
          bottom: 20,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: widget.goHome,
                  icon: Icon(Icons.restaurant),
                  style: IconButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromARGB(255, 102, 175, 162),
                  ),
                  iconSize: 30,
                  constraints: BoxConstraints(minHeight: 80, minWidth: 120),
                  padding: EdgeInsets.zero,
                ),

                IconButton(
                  onPressed: () {},
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
          ),
        ),
        Center(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                "Monthly Report",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Budget",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              Container(
                height: 20,
                width: 350,
                color: Color.fromARGB(255, 102, 175, 162),
              ),
              Text(
                "\$$currentCartPrice / \$$weeklyBudget",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 102, 175, 162),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              //------------------Insights-----------------
              Text(
                "Insights",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              ),
              Text(
                "\$ Saved last month: \$72.12",
                style: TextStyle(color: Color.fromARGB(255, 102, 175, 162)),
              ),
              Text(
                "\$ Saved per month avg: \$35.67",
                style: TextStyle(color: Color.fromARGB(255, 102, 175, 162)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
