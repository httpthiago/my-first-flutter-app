// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

class SecondRecipe extends StatelessWidget {
  const SecondRecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(child: Text('Pizza', style: TextStyle(fontSize: 50),)),
    );
  }
}
