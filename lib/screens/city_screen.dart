import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  late String cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff8F77D6),
        body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_sharp,
                    size: 40.0,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: kTextFieldInputDecoration,
                onChanged: (value) {
                  cityName = value;
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context, cityName);
              },
              child: Text(
                'Get Weather',
                style: kButtonTextStyle,
              ),
            )
          ],
        ),
      )
    );
  }
}
