import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridList extends StatelessWidget {

  var gridItems = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: 100,
      child: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Text(index.toString(),style: TextStyle(color: Colors.white),),
            );
          }),
    );
  }
}
