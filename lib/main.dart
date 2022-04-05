import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp((MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Ask me anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: const MagicBall(),
    ),
  )));
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int balls = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Expanded(
        child: TextButton(
          onPressed: (){
            setState(() {
              balls = Random().nextInt(4)+1;
            });
          },
          child: Image.asset('images/ball$balls.png'),
        ),
      )
    );
  }
}
