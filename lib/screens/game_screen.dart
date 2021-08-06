import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  GameScreen({Key? key, required this.height}) : super(key: key);
  double height;

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                widget.height += 10;
                print(widget.height);
              });
            },
            child: AnimatedContainer(
              height: widget.height,
              duration: Duration(seconds: 5),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  widget.height -= 10;
                  print(widget.height);
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 5),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
