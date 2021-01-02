import 'package:flutter/material.dart';
import 'package:piano_app/screens/home_screen/commom/piano_button_black.dart';
import 'package:piano_app/screens/home_screen/commom/piano_button_white.dart';
import 'package:audioplayers/audio_cache.dart';

class BigScreen extends StatefulWidget {
  @override
  _BigScreenState createState() => _BigScreenState();
}

class _BigScreenState extends State<BigScreen> {
  static AudioCache player = AudioCache();

  void playAudio({String audioName}) {
    player.play(audioName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SafeArea(
                minimum: const EdgeInsets.only(top: 26),
                top: true,
                child: Image.asset(
                  'images/piano.png',
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Row(
                children: [
                  PianoButtonWhite(
                    keyPressed: () {},
                  ),
                  PianoButtonBlack(
                    blackKeyPress: () {
                      playAudio(audioName: 'audios/piano_C_sharp.mp3');
                    },
                    whitekeyPress: () {
                      playAudio(audioName: 'audios/piano_D.mp3');
                    },
                  ),
                  PianoButtonBlack(
                    blackKeyPress: () {
                      playAudio(audioName: 'audios/piano_D_sharp.mp3');
                    },
                    whitekeyPress: () {
                      playAudio(audioName: 'audios/piano_E.mp3');
                    },
                  ),
                  PianoButtonWhite(
                    keyPressed: () {
                      playAudio(audioName: 'audios/piano_F.mp3');
                    },
                  ),
                  PianoButtonBlack(
                    blackKeyPress: () {
                      playAudio(audioName: 'audios/piano_F_sharp.mp3');
                    },
                    whitekeyPress: () {
                      playAudio(audioName: 'audios/piano_G.mp3');
                    },
                  ),
                  PianoButtonBlack(
                    blackKeyPress: () {
                      playAudio(audioName: 'audios/piano_G_sharp.mp3');
                    },
                    whitekeyPress: () {
                      playAudio(audioName: 'audios/piano_A.mp3');
                    },
                  ),
                  PianoButtonBlack(
                    blackKeyPress: () {
                      playAudio(audioName: 'audios/piano_A_sharp.mp3');
                    },
                    whitekeyPress: () {
                      playAudio(audioName: 'audios/piano_B.mp3');
                    },
                  ),
                  PianoButtonWhite(
                    keyPressed: () {/*C*/},
                  ),
                  PianoButtonBlack(
                    blackKeyPress: () {
                      playAudio(audioName: 'audios/piano_C_sharp.mp3');
                    },
                    whitekeyPress: () {
                      playAudio(audioName: 'audios/piano_D.mp3');
                    },
                  ),
                  PianoButtonBlack(
                    blackKeyPress: () {
                      playAudio(audioName: 'audios/piano_D_sharp.mp3');
                    },
                    whitekeyPress: () {
                      playAudio(audioName: 'audios/piano_E.mp3');
                    },
                  ),
                  PianoButtonWhite(
                    keyPressed: () {
                      playAudio(audioName: 'audios/piano_F.mp3');
                    },
                  ),
                  PianoButtonBlack(
                    blackKeyPress: () {
                      playAudio(audioName: 'audios/piano_F_sharp.mp3');
                    },
                    whitekeyPress: () {
                      playAudio(audioName: 'audios/piano_G.mp3');
                    },
                  ),
                  PianoButtonBlack(
                    blackKeyPress: () {
                      playAudio(audioName: 'audios/piano_G_sharp.mp3');
                    },
                    whitekeyPress: () {
                      playAudio(audioName: 'audios/piano_A.mp3');
                    },
                  ),
                  PianoButtonBlack(
                    whitekeyPress: () {
                      playAudio(audioName: 'audios/piano_A_sharp.mp3');
                    },
                    blackKeyPress: () {
                      playAudio(audioName: 'audios/piano_B.mp3');
                      playAudio(audioName: 'audios/piano_B.mp3');
                    },
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
