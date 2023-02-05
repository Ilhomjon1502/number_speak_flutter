import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playMedia(int number) {
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
      Audio("assets/number_$number.wav"),
    );
    assetsAudioPlayer.play();
  }

  Expanded myNumberButton(Color color, int soundNumber){
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          playMedia(soundNumber);
        },
        color: color,
        child: Text(
          '$soundNumber',
          style: TextStyle(color: Colors.white, fontSize: 72),
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    myNumberButton(Colors.lightBlue, 0)
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                   myNumberButton(Colors.red, 1),
                   myNumberButton(Colors.green, 2),
                   myNumberButton(Colors.purple, 3),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                   myNumberButton(Colors.purpleAccent, 4),
                    myNumberButton(Colors.yellow, 5),
                    myNumberButton(Colors.deepPurple, 6),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    myNumberButton(Colors.grey, 7),
                    myNumberButton(Colors.cyan, 8),
                    myNumberButton(Colors.white70, 9),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    myNumberButton(Colors.indigoAccent, 10)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
