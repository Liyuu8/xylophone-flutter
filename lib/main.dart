import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget playSoundButton(int soundNumber, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundNumber.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              playSoundButton(1, Colors.red),
              playSoundButton(2, Colors.orange),
              playSoundButton(3, Colors.yellow),
              playSoundButton(4, Colors.green),
              playSoundButton(5, Colors.lightBlueAccent),
              playSoundButton(6, Colors.blue),
              playSoundButton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
