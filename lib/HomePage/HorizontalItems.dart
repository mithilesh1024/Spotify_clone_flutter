import 'package:flutter/material.dart';

class HorizontalItems extends StatefulWidget {
  @override
  _HorizontalItemsState createState() => _HorizontalItemsState();
}

class _HorizontalItemsState extends State<HorizontalItems> {

  var names = ["Liked Songs","Indian Classical Music","Frozen","Padosan", "Talking Tales", "Bollyhood 00s", "Rab Ne Bana Di Jodi", "Om Shanti Om"];
  var photos = ["likedsongs.jpg","image","frozen.jpg","padosan.jpg","image","image","image","image"];

  Widget text(String name){
    return Container(
      child: Text(name,
        style: TextStyle(
            color: Colors.white
        ),
        overflow: TextOverflow.clip,
      ),
    );
  }

  Widget image(String photo){
    return Container(
      height: 100,
      width: 100,
      child: ClipRRect(
        child: FittedBox(
          child: Image.asset(photo),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget items(BuildContext context){
    return Expanded(
      child: Container(
        height: 200,
        width: 200,
        child: ListView.builder(
            itemCount: names.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index){
              return Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    photos[index] != "image"? image(photos[index]): Text(photos[index]),
                    text(names[index]),
                ],
            ),
              );
            }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        items(context),
      ],
    );
  }
}
