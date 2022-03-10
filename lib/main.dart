import 'package:flutter/material.dart';
import 'package:spotifyclone/HomePage/Homepage.dart';
import 'package:spotifyclone/Search/SearchPage.dart';
import 'HomePage/HorizontalItems.dart';
import 'HomePage/TopTile.dart';
import 'bottomNavigationBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
//        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SearchPage(),
    );
  }
}

