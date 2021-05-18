import 'package:flutter/material.dart';
import 'package:twitter_clone/utils/app_constants.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 20),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 100,
              width: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) => (index == 0)
                    ? Container(
                        child: Container(
                            child: Stack(children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill, image: AssetImage(innocent)),
                          ),
                        ),
                        Positioned(
                          left: 40.0,
                          top: 1.0,
                          bottom: 1.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.blueAccent,
                            radius: 10.0,
                            child: new Icon(
                              Icons.add,
                              size: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 60.0,
                          left: 18.0,
                          child: Text(
                            "Add",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ])))
                    : Container(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(innocent)),
                                ),
                              ),
                              Text(
                                "Innocent",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
