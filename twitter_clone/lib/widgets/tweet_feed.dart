import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_clone/utils/app_constants.dart';

class TweetFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: SizedBox(

                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.vertical,
                  itemBuilder: (context, index)=>Container(
            child: Column(
        children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                caro,
                                

                              ),
                            )
                          ),
                        )
                    ),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                        child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: "Caroline John",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18.0,
                                              color: Colors.black),
                                        ),
                                        TextSpan(
                                            text: " " + "@hon.carrie",
                                            style: TextStyle(
                                                fontSize: 16.0, color: Colors.grey)),
                                        TextSpan(
                                            text: " " + "1h",
                                            style: TextStyle(
                                                fontSize: 16.0, color: Colors.grey))
                                      ]),
                                      overflow: TextOverflow.ellipsis,
                                    )),
                                    flex: 5,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 4.0),
                                      child: Icon(
                                        FontAwesomeIcons.ellipsisH,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    flex: 1,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                "Sorry, I was late bcoz I had to find all the things in plain sight for my hustband.",
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.comment,
                                    color: Colors.grey,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.retweet,
                                    color: Colors.grey,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.heart,
                                    color: Colors.grey,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.shareAlt,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                    )
                  ],
                )),
            Divider(),
        ],
      )),
                      ),
          ),
    );
  }
}
