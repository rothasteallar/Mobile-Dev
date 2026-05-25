import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(5),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Column(
              children: [
                Text('OOP', style: TextStyle(color: Colors.white)),
                Text('DART', style: TextStyle(color: Colors.white)),
                Text('FLUTTER', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
