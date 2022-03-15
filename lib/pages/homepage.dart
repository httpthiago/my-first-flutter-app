// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/pages/view_pages/first_recipe.dart';
import 'package:myfirstflutterapp/pages/view_pages/second_recipe.dart';
import 'package:myfirstflutterapp/pages/view_pages/third_recipe.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = new PageController();

  int bottomNavBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thiagod Receitas', style: TextStyle(fontSize: 30)),
        centerTitle: true,
      ),
      body: PageView(
        onPageChanged: (int page) => setState(() {
          bottomNavBarIndex = page;
        }),
        controller: _pageController,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          FirstRecipe(),
          SecondRecipe(),
          ThirdRecipe(),
        ],
      ),

      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomNavBarIndex,
          onTap: (int page) {
            setState(() {
              bottomNavBarIndex = page;
            });
            _pageController.animateToPage(page,
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.food_bank),
              label: 'Brigadeiro',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_pizza),
              label: 'Pizza',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fastfood),
              label: 'Hamburguer',
            ),
          ]),
    );
  }
}
