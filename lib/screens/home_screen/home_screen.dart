import 'package:flutter/material.dart';
import 'package:piano_app/screens/home_screen/commom/big_screen.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:piano_app/screens/home_screen/commom/small_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static AudioCache player = AudioCache();

  void playAudio({String audioName}) {
    player.play(audioName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 100) {
            return SmallScreen();
          } else {
            return BigScreen();
          }
        },
      ),
    );
  }
}
