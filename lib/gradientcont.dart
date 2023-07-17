import 'package:diceapp/diceroller.dart';
import 'package:flutter/material.dart';


const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;// we use final(const) in place
// of var to fix the value , the values cant be reassigned 

/*class GradientContainer extends StatelessWidget{
 const GradientContainer(this.colors , {super.key});//ye constructor fn kyu banaya ?
 // to use this custom widget with passing argument (reusable banane ke liye)
  final List<Color> colors ;// color vala reusable widget ese bnta h kyuki color list hoti
  @override // alternative solution is below
  Widget build(context){
    return Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              colors:colors,
               
              begin: startAlignment,
              end: endAlignment// cant accept const because variables can change
              )
          ),
          child: const Center(
            child: StyledText('hello moto')
          ),
        );
  }

}*/
class GradientContainer extends StatelessWidget{//stateful allow to change ui state
  const GradientContainer(this.color1,this.color2 , {super.key});//ye constructor fn kyu banaya ?
 // to use this custom widget with passing argument (reusable banane ke liye)
  final Color color1 ;// color vala reusable widget ese bnta h kyuki color list hoti
  final Color color2 ;

  

  @override // alternative solution is above
  Widget build(context){
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[color1 , color2],
              begin: startAlignment,
              end: endAlignment// cant accept const because variables can change
              )
          ),
          child: const Center(
            child: DiceRoller()
          ),
        );
  }

}