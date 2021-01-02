import 'package:flutter/material.dart';
import 'package:piano_app/screens/home_screen/home_screen.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SplashScreen(
            seconds: 2,
            navigateAfterSeconds: HomeScreen(),
            loaderColor: Colors.transparent,
          ),
          Image.asset(
            'images/21365.jpg',
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            //height: MediaQuery.of(context).size.height * 0.9,
          )
        ],
      ),
    );
  }
}
