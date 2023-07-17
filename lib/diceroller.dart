import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State <DiceRoller> createState (){
    return _DiceRollerstate();
  }
}


class _DiceRollerstate extends State<DiceRoller>{//underscore means private class
  
  final randomizer = Random();
  //var activediceimage = 'assets/images/dice-5.png';
  var currentdiceroll = 2;
  void rolldice(){
   setState((){
    // activediceimage = 'assets/images/dice-$diceroll.png';//will not change image because build needs to be re excecute ...setstate will help
     currentdiceroll = randomizer.nextInt(6)+1;
   });
   
  }
  @override
  Widget build(context){
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [ Image.asset(
              'assets/images/dice-$currentdiceroll.png',
              width: 300,
              ),
              const SizedBox(height: 50,),
              TextButton(
                onPressed: rolldice, //fucntion is called
                style: TextButton.styleFrom(
                       foregroundColor: const Color.fromARGB(221, 253, 244, 244),
                       textStyle:  const TextStyle(
                               fontSize: 45 

            ) ),
                child: const Text('Roll dice'))
              ],
            );
  }
} 