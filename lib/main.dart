import 'dart:math';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:i_am_rich/new%20story/story.dart';
//import 'package:i_am_rich/new%20pages/xylo.dart';

import 'new pages/quiz.dart';

void main() {
  runApp(
    MaterialApp(
      home: StoryPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'Neal Caffrey says',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 30.0,
          ),
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int tap = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            padding: EdgeInsets.all(18.0),
            child: Text(
              'I dont believe in Goodbye\'s uwu',
              style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 20.0,
                  fontFamily: 'Pacifico'),
            ),
          ),
          Container(
            child: Icon(
              Icons.flight_takeoff,
              color: Colors.blue[900],
              size: 60.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                Image.asset('images/ball$tap.png'),
                Positioned(
                  top: 90.0,
                  left: 120.0,
                  child: GestureDetector(
                    onTap: () {
                      final assetsAudioPlayer = AssetsAudioPlayer();
                      assetsAudioPlayer.open(
                        Audio("assets/assets_note1.wav"),
                      );
                      setState(() {
                        tap = Random().nextInt(4) + 1;
                        print(tap);
                      });
                    },
                    child: Container(
                      width: 100.0,
                      height: 90.0,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// TextButton(
// onPressed: () {
// final assetsAudioPlayer = AssetsAudioPlayer();
//
// assetsAudioPlayer.open(
// Audio("assets/assets_note1.wav"),
// );

// child:
// ),
