import 'package:flutter/material.dart';
import 'package:spotifyclone/bottomNavigationBar.dart';
import 'HorizontalItems.dart';
import 'TopTile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var gridItems = ["Frozen", "Liked Songs", "Indian Classical Songs", "Padosan", "Kabir Singh", "Red Dead Redemption 2"];

  Widget text(String t){
    return Text( t ,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1,1],
            colors: [Colors.blue, Colors.black]
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      text("Good Morning"),
                      IconButton(
                        icon: Icon(Icons.settings),
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TopTile("Frozen", "Bandish Bandits","frozen.jpg","bandish_bandits.jpg"),
                  SizedBox(height: 8,),
                  TopTile("Kabir Singh", "Liked Songs","kabir_singh.jpg", "likedsongs.jpg"),
                  SizedBox(height: 8,),
                  TopTile("Padosan", "Rahat Fateh Ali Khan", "padosan.jpg", "rahat.jpg"),
                  SizedBox(height: 30,),
                  text("Recently Played"),
                  HorizontalItems(),
                  text("Jump back in"),
                  HorizontalItems(),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}

