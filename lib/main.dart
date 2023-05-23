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

//For repeated expanded widgets => used functions which return Expanded widget
//Color color(for colors choice),int soundNumber (for different audios)
  Expanded builtkey(Color color, int soundNumber) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
        ),
        onPressed: () {
          playsound(soundNumber);
        },
        child: Container(),
      ),
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
            builtkey(Colors.red, 1),
            builtkey(Colors.green, 2),
            builtkey(Colors.blue, 3),
            builtkey(Colors.orangeAccent, 4),
            builtkey(Colors.purple, 5),
            builtkey(Colors.teal, 6),
            builtkey(Colors.brown, 7),
          ],
        ),
      ),
    );
  }
}
