import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade400,
        appBar: AppBar(
          title: Text('Magic 8 ball'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int _ballState = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child :Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FlatButton(
              child: Image.asset('images/ball$_ballState.png'),
              onPressed: (){
                setState(() {
                  _ballState=Random().nextInt(5)+1;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
