import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/app_constrants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          logo,
          width: 105,
        ),
        backgroundColor: Colors.black,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: EdgeInsets.only(right: 45),
                  child: Icon(FontAwesomeIcons.chromecast)),
              Container(
                  margin: EdgeInsets.only(right: 35),
                  child: Icon(FontAwesomeIcons.video)),
              Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Icon(FontAwesomeIcons.search)),
              Container(                  margin: EdgeInsets.only(right:10),
child: Icon(FontAwesomeIcons.userCircle))
            ],
          )
        ],
      ),
    );
  }
}
