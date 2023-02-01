import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Ask Me Anything'),
        ),
        body: BallFace(),
      ),
    ),
  );
}

class BallFace extends StatefulWidget {
  const BallFace({Key? key}) : super(key: key);

  @override
  State<BallFace> createState() => _BallFaceState();
}

class _BallFaceState extends State<BallFace> {
  int eyeball = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  eyeball = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$eyeball.png'),
            ),
          ),
        ],
      ),
    );
  }
}
