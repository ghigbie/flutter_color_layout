import 'package:flutter/material.dart';
import 'color_layout.dart';

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
            Container(color: Colors.blue, height: 40, padding: EdgeInsets.only(bottom: 10)) 
          ]
            ),
        ),
      );
    }
  }