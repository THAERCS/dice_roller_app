import 'package:flutter/material.dart';
import 'style.dart/background.dart';

void main() {
  runApp(
    MaterialApp(
      home: const Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Background([
          Color.fromARGB(255, 38, 0, 100),
          Color.fromARGB(255, 166, 73, 225),
        ]),
      ),
    ),
  );
}
