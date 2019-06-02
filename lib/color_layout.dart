import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'color_layout.dart';

const _CELL_PADDING = 10.0;
const _THIRD_ROW_HEIGHT = 100.0;
const _SMALL_CELLS_HEIGHT = 20.0;

class _FirstRow extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.red,
      height: 80
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
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: _CELL_PADDING),
      child: Row(
        children: [
          Expanded(child: Container(color: Colors.blue[400], height: _THIRD_ROW_HEIGHT)),
          Expanded(child: Container(color: Colors.green[400], height: _THIRD_ROW_HEIGHT)),
          Expanded(child: Container(color: Colors.yellow[400], height: _THIRD_ROW_HEIGHT)),
          Expanded(child: Container(color: Colors.pink[400], height: _THIRD_ROW_HEIGHT)),
        ],
      ),
    );
  }
}

class _AdjustableBlock extends StatelessWidget{
  final double widthFactor;
  _AdjustableBlock(this.widthFactor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: _CELL_PADDING),
      child: Row(
        children: [
          Expanded(
            child: Container(color: Colors.red, height: _SMALL_CELLS_HEIGHT,)
          )
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
            _AdjustableBlock(1.0),
          ]
            ),
        ),
      );
    }
  }