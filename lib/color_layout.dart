import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'color_layout.dart';

class FirstRow extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Expanded(
          child: AspectRatio(
              aspectRatio: 1/1,
              child: Container(color: Colors.blue)
            )
          ),
        Expanded(child: Container(color: Colors.yellow, height: 100)),
      ]
    );
  }
}

class SecondRow extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Container(color: Colors.pink, height: 100, width: 100)
      ]
    );
  }
}

class ColorLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        padding: EdgeInsets.all(25),
        color: Colors.grey[300],
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(color: Colors.red, height: 50, padding: EdgeInsets.only(bottom: 10)),
            Container(color: Colors.green, height: 40, padding: EdgeInsets.only(bottom: 10)),
            FirstRow(),
            SecondRow(),
          ]
            ),
        ),
      );
    }
  }