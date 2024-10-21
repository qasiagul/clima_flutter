import 'dart:async';
import 'package:clima_flutter/screens/loading_screen.dart';
import 'package:flutter/material.dart';

import 'location_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Start a timer when the widget is initialized
    Timer(Duration(seconds: 4), () {
      // After 3 seconds, navigate to the second screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LocationScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff1883E3),
                Colors.grey,
              ],
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.10),
                    spreadRadius: 30,
                    blurRadius: 30,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
                child:  Image.asset('images/weather_icon.png'),
              ),
            ),
            Text('Weather',style: TextStyle(color: Color(0xffFEB300),fontSize: 30),),
            Text('Forecast App.',style: TextStyle(color: Colors.white,fontSize: 30),),
            LoadingScreen(),
          ],
        ),
      ),
    );
  }
}

