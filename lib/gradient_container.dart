import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;


//Creating my own widgets, we need to make classes
class GradientContainer extends StatelessWidget{
  const GradientContainer(this.color1, this.color2, {super.key});//: super(key: key);
  
  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;
  
  final Color color1;
  final Color color2;
  

  @override
  //Below is a function which must return a widget
  Widget build(context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1, color2],
               begin: startAlignment,
               end: endAlignment,
            ),
          ),
          //Ending for gradient Color
          child: const Center(
            child: DiceRoller(),
        ),
      );

  }
}

/*
//Creating my own widgets, we need to make classes
class GradientContainer extends StatelessWidget{
  const GradientContainer({super.key, required this.colors});//: super(key: key);

  final List<Color> colors;

  @override
  //Below is a function which must return a widget
  Widget build(context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
               begin: startAlignment,
               end: endAlignment,
            ),
          ),
          //Ending for gradient Color
          child: const Center(
            child: StyledText('Hello World!'),
        ),
      );

  }
}*/