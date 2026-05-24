import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
        color: Colors.blue[300],
        padding: const EdgeInsets.all(40),
        margin: const EdgeInsets.all(50),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Center(
            child: Text(
              'CADT STUDENTS',
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
          ),
        ),
      ),
    ),
  );
}
