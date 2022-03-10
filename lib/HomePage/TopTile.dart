import 'package:flutter/material.dart';

class TopTile extends StatelessWidget {
  var names = [];
  var photo = [];

  TopTile(String name1, String name2, String photo1, String photo2){
    names.add(name1);
    names.add(name2);
    photo.add(photo1);
    photo.add(photo2);
  }

  Widget text(String name){
    return Text(name,
      style: TextStyle(
          color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      overflow: TextOverflow.clip,
    );
  }

  Widget image(String photo){
    return Container(
      height: 50,
      width: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), bottomLeft: Radius.circular(10.0)),
        child: FittedBox(
          child: Image.asset(photo),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget tile (String photo, String name, BuildContext context) {
    return Container(
      height: 50,
      width: (MediaQuery.of(context).size.width/2) - 15,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Row(
        children: <Widget>[
          image(photo),
          SizedBox(width: 8,),
          text(name),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        tile(photo[0], names[0], context),
        SizedBox(
          width: 8,
        ),
        tile(photo[1], names[1], context),
      ],
    );
  }
}
