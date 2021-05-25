import 'package:flutter/material.dart';
import 'package:therapy_app/screens/homepage.dart';
import 'package:therapy_app/utils/app_constrants.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(background), fit: BoxFit.fill)),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 530,
              left: 60,
            ),
            child: Column(
              children: [
                Text(
                  "THERAPY & CARE",
                  style: TextStyle(
                    color: white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                                SizedBox(height: 03,),

                Container(
                  child: Text(
                    'Find a professional doctor and make \n an appointment in three clicks',
                    style: TextStyle(color: white, fontSize: 16),
                  ),
                ),
                SizedBox(height: 29,),
                ElevatedButton(
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: white),
                  ),
                  style: ButtonStyle(
                   minimumSize: MaterialStateProperty.all(Size(200, 40)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: darkBlue))),
                  backgroundColor: MaterialStateProperty.all(Color(0XFF081857))
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
