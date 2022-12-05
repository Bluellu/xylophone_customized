import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
              child: TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  //AudioCache cache = new AudioCache();
                  //cache.load('assets/note1.wav');
                  //player.audioCache = cache;

                  //await player.play(DeviceFileSource('assets'));
                },
                child: const Text('Click Me'),
            ),
          ),
        ),
      ),
    );
  }
}



