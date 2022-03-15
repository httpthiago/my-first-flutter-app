// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

class ThirdRecipe extends StatelessWidget {
  const ThirdRecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(child: Text('Hamburguer', style: TextStyle(fontSize: 50),)),
    );
  }
}
