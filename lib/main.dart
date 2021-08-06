import 'package:flutter/material.dart';
import 'package:touch_game/screens/game_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Touch Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LayoutBuilder(builder: (context, snapshot) {
        double _height = snapshot.maxHeight;
        return GameScreen(height: _height / 2);
      }),
    );
  }
}
