import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(){
    final player = AudioCache();
    player.play('note2.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note1.wav');
                },
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note2.wav');
                },
                child: Text('Click Me'),
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note3.wav');
                },
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note4.wav');
                },
              ),
              FlatButton(
                color: Colors.grey,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note5.wav');
                },
              ),
              FlatButton(
                color: Colors.purple,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note6.wav');
                },
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note7.wav');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
