import 'package:flutter/material.dart';

class Buttonmodel {
  final String audioName;
  final Color color;

  const Buttonmodel({required this.audioName, required this.color});
}

const button = [
  Buttonmodel(audioName: 'note1', color: Colors.red),
  Buttonmodel(audioName: 'note2', color: Colors.orange),
  Buttonmodel(audioName: 'note3', color: Colors.yellow),
  Buttonmodel(audioName: 'note4', color: Colors.green),
  Buttonmodel(audioName: 'note5', color: Colors.blue),
];
