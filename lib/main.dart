import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void soundPlayer(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buttonMaker({int num, Color color}) {
    return Expanded(
      child: FlatButton(
        child: Text(''),
        color: color,
        onPressed: () {
          soundPlayer(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buttonMaker(num: 1, color: Colors.blue[900]),
              buttonMaker(num: 2, color: Colors.red),
              buttonMaker(num: 3, color: Colors.green),
              buttonMaker(num: 4, color: Colors.pink),
              buttonMaker(num: 5, color: Colors.purple),
              buttonMaker(num: 6, color: Colors.cyan),
              buttonMaker(num: 7, color: Colors.yellow),
            ],
          ),
        ),
      ),
    );
  }
}
