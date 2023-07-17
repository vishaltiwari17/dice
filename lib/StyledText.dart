import 'package:flutter/material.dart';
 
 class StyledText extends StatelessWidget {
const StyledText(this.text ,{super.key});//ye constructor fn kyu banaya ?
final String text; // agar final htega to const bhi
 @override//this is a short cut , const hatane pdenge
  Widget build(context){
    return  Text(
              text,
              style: const TextStyle(
              color: Colors.amberAccent,
              fontSize: 45 

            )
            );
 }
 }