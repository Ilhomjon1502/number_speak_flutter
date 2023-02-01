import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          // final player = AudioPlayer();
                          // player.setSource(AssetSource('number_1.wav'));
                          // player.play();
                          final assetsAudioPlayer = AssetsAudioPlayer();

                          assetsAudioPlayer.open(
                            Audio("assets/number_0.wav"),
                          );
                          assetsAudioPlayer.play();
                        },
                        color: Colors.lightGreenAccent,
                        child: Text("0"),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.red,
                        child: Text("1"),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.green,
                        child: Text("2"),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.blue,
                        child: Text("3"),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.red,
                        child: Text("4"),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.green,
                        child: Text("5"),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.blue,
                        child: Text("6"),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.red,
                        child: Text("7"),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.green,
                        child: Text("8"),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.blue,
                        child: Text("9"),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.teal,
                        child: Text("10"),
                      ),
                    )
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
