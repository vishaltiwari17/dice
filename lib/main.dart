import 'package:flutter/material.dart';
import 'package:diceapp/gradientcont.dart';

void main() {
  runApp(
      const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
           Color.fromARGB(255, 250, 43, 29), 
          Color.fromARGB(255, 15, 4, 4)
          )
        )
      ),
    );
   // we pass 'named arguments' in MaterialsAapp , home is used to display
}