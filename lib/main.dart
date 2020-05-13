import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  // add it to your class as a static member
  static AudioCache player = AudioCache();

  Expanded notePlacement(int noteNumber, {MaterialColor color}) {
    return Expanded(
      child: FlatButton(
        child: Text(
          'Note $noteNumber',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        color: color,
        onPressed: () {
          playAudio(noteNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              notePlacement(1, color: Colors.indigo),
              notePlacement(2, color: Colors.teal),
              notePlacement(3, color: Colors.deepOrange),
              notePlacement(4, color: Colors.amber),
              notePlacement(5, color: Colors.purple),
              notePlacement(6, color: Colors.cyan),
              notePlacement(7, color: Colors.lightGreen),
            ],
          ),
        ),
      ),
    );
  }

  void playAudio(int noteNumber) {
    // or as a local variable
    final player = AudioCache();
    // call this method when desired
    player.play('note$noteNumber.wav');
  }
}
