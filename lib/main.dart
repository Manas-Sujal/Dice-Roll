import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';



void main() {
  // defining a function
  runApp(
     const MaterialApp(
      home: Scaffold(
        //For Gradient Color
        body: GradientContainer(
          Color.fromARGB(255, 33, 5, 109),
          Color.fromARGB(255, 68, 21, 149),
          ),
      ),
    ),
  ); // To Run the app, Start with this
}
