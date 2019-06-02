import 'package:flutter/material.dart';


class ColorLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        color: Colors.grey[300],
        child: Text('Temp'),
        height: double.infinity,
        width: double.infinity,
      ));
  }
}