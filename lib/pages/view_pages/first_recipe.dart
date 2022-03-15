// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

class FirstRecipe extends StatelessWidget {
  const FirstRecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      child: Center(child: Text('Brigadeiro', style: TextStyle(fontSize: 50),)),
    );
  }
}
