import 'package:flutter/material.dart';

void main() {
  runApp(destination());
}

class destination extends StatelessWidget {
  const destination({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
