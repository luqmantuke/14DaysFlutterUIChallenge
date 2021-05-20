import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: Color(0xff909090),
      elevation: 0.0,
      backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
      iconSize: 20,
      items: [
        
        BottomNavigationBarItem(
            title: Text("Home"),
            icon: Icon(
              FontAwesomeIcons.home,
            )),
             BottomNavigationBarItem(
            title: Text("Trending"),
            icon: Icon(
              FontAwesomeIcons.fire,
            )),
             BottomNavigationBarItem(
            title: Text("Subscriptions"),
            icon: Icon(
             Icons.subscriptions,
            )),
          BottomNavigationBarItem(
            title: Text("Inbox"),
            icon: Icon(
              FontAwesomeIcons.solidEnvelope,
            )),
             BottomNavigationBarItem(
            title: Text("Library"),
            icon: Icon(
              FontAwesomeIcons.solidFolder,
            )),
    
      ],
    );
  }
}
