import 'package:flutter/material.dart';
import 'package:twitter_clone/utils/app_constants.dart';
import 'package:twitter_clone/widgets/stories.dart';

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
      theme: ThemeData(),
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
              
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.edit_outlined),
        ),
      ),
    );
  }
}
