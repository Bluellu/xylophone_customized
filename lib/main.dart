import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() =>  runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int num) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$num.wav'));
  }

  Expanded buildKey(Color color, int num) {
    return Expanded(
      child: ElevatedButton(
          onPressed: () {
            playSound(num);
          },
          style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all<Color>(color)),
          child: null),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.teal, 5),
              buildKey(Colors.blue,  6),
              buildKey(Colors.purple, 7)
             ],
          ),
        ),
      ),
    );
  }
}
