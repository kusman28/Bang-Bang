import 'package:bang_bang/screens/facts_screen.dart';
import 'package:bang_bang/screens/home_screen.dart';
import 'package:bang_bang/screens/quiz_screen.dart';
import 'package:bang_bang/screens/recipes_scree.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;

  final tabs = [HomeScreen(), Recipes(), Facts(), Quiz()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.fastfood), title: Text("Recipes")),
          BottomNavigationBarItem(
              icon: Icon(Icons.question_answer), title: Text("Facts")),
          BottomNavigationBarItem(
              icon: Icon(Icons.gamepad), title: Text("Quiz")),
        ],
        iconSize: 30,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
      body: tabs[selectedIndex],
    );
  }
}
