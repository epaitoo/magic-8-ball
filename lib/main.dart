import 'package:flutter/material.dart';
import 'dart:math';


  
void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatefulWidget {

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  
  List colors = [Colors.red, Colors.green, Colors.yellow, 
                  Colors.grey, Colors.teal, Colors.deepOrange];

  int index = 0;

  int ballNumber = 1;

  void changeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      index = Random().nextInt(6);
    });
  }

  // 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors[index],
      appBar: AppBar(
        title: Center(
          child: Text('Ask me Anything'),
        ),
        backgroundColor: Colors.deepPurple[900],
      ),
      body: Center(
        child: Container(
          child: FlatButton(
            onPressed: () {
              changeBall();
            },
            child: Image.asset('images/ball$ballNumber.png'),
          ),
      ),
      )
    );
  }
}

