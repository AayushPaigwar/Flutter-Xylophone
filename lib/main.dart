import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  //parameterised function
  void playsound(int soundnumber) {
    final player = AudioPlayer(); //audio player libry
    player.play(
      AssetSource('note$soundnumber.wav'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.amberAccent),
                ),
                onPressed: () {
                  playsound(1);
                },
                child: Container(),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue),
                ),
                onPressed: () {
                  playsound(2);
                },
                child: Container(),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.greenAccent),
                ),
                onPressed: () {
                  playsound(3);
                },
                child: Container(),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.orange),
                ),
                onPressed: () {
                  playsound(4);
                },
                child: Container(),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.purple),
                ),
                onPressed: () {
                  playsound(5);
                },
                child: Container(),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                ),
                onPressed: () {
                  playsound(6);
                },
                child: Container(),
              ),
            ),
            Expanded(
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                  ),
                  onPressed: () {
                    playsound(7);
                  },
                  child: Container()),
            ),
          ],
        ),
      ),
    );
  }
}
