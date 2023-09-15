import 'package:flutter/material.dart';
import 'package:test_app/screen/levels_screen.dart';

class Level05Levels extends StatelessWidget {
  const Level05Levels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),),
      body: Text('amira'),
    );
  }
}
