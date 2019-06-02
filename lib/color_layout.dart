import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'color_layout.dart';

const _CELL_PADDING = 10.0;

class _FirstRow extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.only(top: _CELL_PADDING),
      color: Colors.red,
      height: 100
    );
  }
}
class _SecondRow extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.only(top: _CELL_PADDING),
        child:  Row(
        children: [
          Expanded(
            child: AspectRatio(
                aspectRatio: 1/1,
                child: Container(color: Colors.blue)
              )
            ),
          Container(width: _CELL_PADDING),  
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

class _ThirdRow extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.only(top: _CELL_PADDING),
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
            _FirstRow(),
            _SecondRow(),
            _ThirdRow(),
          ]
            ),
        ),
      );
    }
  }