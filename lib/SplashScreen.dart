import 'dart:async';

import 'package:finalgoogleplay/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
                image:AssetImage("assets/image/logo.png"),
              width: 120,
              height: 120,
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Google",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                Text("Play",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.normal),),

              ],
            )
          ],
        ),
      )

    );
  }
}
