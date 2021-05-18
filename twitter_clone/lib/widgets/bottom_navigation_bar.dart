import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          title: Text(""),
          icon: Icon(
            FontAwesomeIcons.home,
        
          ),
        ),
        BottomNavigationBarItem(
          title: Text(""),
          icon: Icon(
            FontAwesomeIcons.search,
          ),
        ),
        BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(
              FontAwesomeIcons.bell,
            )),
        BottomNavigationBarItem(
          title: Text(""),
          icon: Icon(
            FontAwesomeIcons.envelope,
          ),
        ),
      ],
    );
  }
}
