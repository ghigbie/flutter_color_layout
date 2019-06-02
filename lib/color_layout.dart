import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'color_layout.dart';

var padding = 10.0;

class _FirstRow extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.only(top: padding),
        child:  Row(
        children: [
          Expanded(
            child: AspectRatio(
                aspectRatio: 1/1,
                child: Container(color: Colors.blue)
              )
            ),
          Container(width: padding),  
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
    return Container(
      padding: EdgeInsets.only(top: padding),
      child: Row(
        children: [
          AspectRatio(aspectRatio: 1/1, child: Container(color: Colors.blue)),
          AspectRatio(aspectRatio: 1/1, child: Container(color: Colors.red)),
          AspectRatio(aspectRatio: 1/1, child: Container(color: Colors.yellow)),
          AspectRatio(aspectRatio: 1/1, child: Container(color: Colors.green)),
          AspectRatio(aspectRatio: 1/1, child: Container(color: Colors.pink)),
        ]
      )
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