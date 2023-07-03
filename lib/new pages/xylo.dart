import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Xylophone'),
        backgroundColor: Colors.black,
      ),
      body: XylophonePage(),
    );
  }
}

class XylophonePage extends StatefulWidget {
  const XylophonePage({Key? key}) : super(key: key);

  @override
  State<XylophonePage> createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  //// function which takes argument for which sound to play
  void playSound(int soundNumber) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/assets_note$soundNumber.wav"),
    );
  }

// function to return widget
  Expanded buildKey(
      {required Color color, required int soundNumber, required String str}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playSound(soundNumber);
        },
        child: Container(
          color: color,
          child: Center(
            child: Text(
              str,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontFamily: 'Pacifico',
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(color: Colors.red, soundNumber: 1, str: 'Do'),
          buildKey(color: Colors.orange, soundNumber: 2, str: 'What'),
          buildKey(color: Colors.indigo, soundNumber: 3, str: 'FLOATS'),
          buildKey(color: Colors.teal, soundNumber: 4, str: 'Your'),
          buildKey(color: Colors.green, soundNumber: 5, str: 'boat'),
          buildKey(color: Colors.blue, soundNumber: 6, str: 'uwu'),
          buildKey(color: Colors.pink, soundNumber: 7, str: ';)')
        ],
      ),
    );
  }
}
