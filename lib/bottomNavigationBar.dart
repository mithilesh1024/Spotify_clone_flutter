import 'package:flutter/material.dart';
import 'package:spotifyclone/HomePage/Homepage.dart';

import 'Library/LibraryPage.dart';
import 'Premium/PremiumPage.dart';
import 'Search/SearchPage.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {

  var _currentIndex = 0;

  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
      changePage(index);
    });
  }

  Text text (String name) {
    return Text(name,
      style: TextStyle(color: Colors.white, fontSize: 12),
    );
  }

  void changePage(int index) {
    print(index);
    switch(index){
      case 0:
        if(index == _currentIndex){
          Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
        }
        break;
      case 1:
        if(index == _currentIndex){
          Navigator.push(context, MaterialPageRoute(builder: (_) => SearchPage()));
        }
        break;
      case 2:
        if(index == _currentIndex){
          Navigator.push(context, MaterialPageRoute(builder: (_) => LibraryPage()));
        }
        break;
      case 3:
        if(index == _currentIndex){
          Navigator.push(context, MaterialPageRoute(builder: (_) => PremiumPage()));
        }
        break;
      default:
        print("error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.grey[800],
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            title: text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white),
            title: text("Search")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music, color: Colors.white),
              title: text("Your Library")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update, color: Colors.white),
              title: text("Premium")
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index){
          onTabTapped(index);
        },
//        selectedItemColor: Colors.white,
      );
  }
}
