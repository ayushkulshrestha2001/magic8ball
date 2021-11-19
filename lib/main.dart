import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          title: Text('Ask me Anything'),
          backgroundColor: Colors.blue.shade800,
        ),
        body: Magic(),
      ),
    ),
  );
}

class Magic extends StatefulWidget {
  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    void change() {
      setState(() {
        ballNumber = Random().nextInt(5) + 1;
      });
    }

    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1, //for telling how much should this one expand
            child: TextButton(
              onPressed: () {
                setState(() {
                  change();
                });
              },
              child: Image(
                image: AssetImage('images/ball$ballNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
