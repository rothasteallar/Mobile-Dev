import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        // home: Column(
        body: Column(
          children: [
            SizedBox(height: 100),
            Container(height: 400, color: Colors.blueAccent),
            Container(
              height: 100,
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.green)),
                  Container(width: 100, color: Colors.pinkAccent),
                ],
              ),
            ),
            Container(
              height: 100,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(child: Container(color: Colors.amberAccent)),
                  SizedBox(width: 20),
                  Expanded(child: Container(color: Colors.amberAccent)),
                  SizedBox(width: 20),
                  Expanded(child: Container(color: Colors.amberAccent)),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(child: Container(color: Colors.pinkAccent)),
          ],
        ),
      ),
    ),
  );
}
