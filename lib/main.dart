import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget rowItem({Color setColor, int fileNo}) => Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          child: Container(
            color: setColor,
          ),
          onPressed: () {
            final player = AudioCache();
            player.play('note$fileNo.wav');
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              rowItem(
                setColor: Colors.red,
                fileNo: 1,
              ),
              rowItem(
                setColor: Colors.orange,
                fileNo: 2,
              ),
              rowItem(
                setColor: Colors.yellow,
                fileNo: 3,
              ),
              rowItem(
                setColor: Colors.green,
                fileNo: 4,
              ),
              rowItem(
                setColor: Colors.teal,
                fileNo: 5,
              ),
              rowItem(setColor: Colors.blue, fileNo: 6),
              rowItem(
                setColor: Colors.purple,
                fileNo: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
