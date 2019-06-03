import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: KeyboardButtons(),
        ),
      ),
    );
  }
}

class KeyboardButtons extends StatelessWidget {
  AudioCache audioCache = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        buildKeyboardButton(color: Colors.red, soundNumber: 1),
        buildKeyboardButton(color: Colors.orange, soundNumber: 2),
        buildKeyboardButton(color: Colors.yellow, soundNumber: 3),
        buildKeyboardButton(color: Colors.green, soundNumber: 4),
        buildKeyboardButton(color: Colors.teal, soundNumber: 5),
        buildKeyboardButton(color: Colors.blue, soundNumber: 6),
        buildKeyboardButton(color: Colors.purple, soundNumber: 7),
      ],
    );
  }

  Expanded buildKeyboardButton({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.all(0),
        color: color,
        child: null,
        onPressed: () {
          audioCache.play("note$soundNumber.wav");
        },
      ),
    );
  }
}
