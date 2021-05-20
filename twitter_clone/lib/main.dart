import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_clone/utils/app_constants.dart';
import 'package:twitter_clone/widgets/bottom_navigation_bar.dart';
import 'package:twitter_clone/widgets/stories.dart';
import 'package:twitter_clone/widgets/tweet_feed.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        
      ),
      home: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.blue),
          backgroundColor: Colors.white,
          elevation: 0.0,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  logo,
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 150),
                ),
                Image.asset(
                  sparkle,
                  color: Colors.blue,
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
              ],
            )
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Stories(),
              TweetFeed(),
            ],
          ),
        ),
        bottomNavigationBar: MyBottomNavigationBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(FontAwesomeIcons.featherAlt),
        ),
      ),
    );
  }
}
