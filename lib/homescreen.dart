import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:xylophone/buttonmodel.dart';
import 'package:xylophone/xylophone.dart';

class Homescreen extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late final AudioPlayer player = AudioPlayer();
  final buttons = button;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: buttons
            .map(
              (e) => Xylophone(
                  color: e.color,
                  onPressed: () async {
                    await player.play(
                      AssetSource('${e.audioName}.wav'),
                    );
                  }),
            )
            .toList(),
      ),
    );
  }
}
        //  button.map((e)=>Xylophone(color:e.color, onPressed:e.audioName),).toList()
