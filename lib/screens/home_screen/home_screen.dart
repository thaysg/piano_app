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
        )
        /* Stack(
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
      ), */
        );
  }
}
