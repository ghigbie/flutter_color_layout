import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'color_layout.dart';

class _FirstRow extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.only(top: 10),
        child:  Row(
        children: [
          Expanded(
            child: AspectRatio(
                aspectRatio: 1/1,
                child: Container(color: Colors.blue)
              )
            ),
          Expanded(
            child: AspectRatio(
                aspectRatio: 1/1,
                child: Column(
                  children: [
                    Expanded(child: Container(color: Colors.purple)),
                    Expanded(child: Container(color: Colors.yellow)),
                  ]
                )
            )
          )
        ]
      )
    );
  }
}

class _SecondRow extends StatelessWidget{
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
            Container(color: Colors.red, height: 100, padding: EdgeInsets.only(bottom: 10)),
            _FirstRow(),
            _SecondRow(),
          ]
            ),
        ),
      );
    }
  }