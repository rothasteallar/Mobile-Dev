// import 'package:flutter/material.dart';

// class MyButton extends StatelessWidget {
//   const MyButton({super.key, required this.label, required this.background});
//   final String label;
//   final Color background;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: background,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Center(
//         child: Text(label, style: TextStyle(color: Colors.white)),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: [
//             MyButton(label: "DART", background: Colors.green),
//             MyButton(label: "Flutter", background: Colors.blue),
//             MyButton(label: "OOP", background: Colors.pinkAccent),
//           ],
//         ),
//       ),
//     ),
//   );
// }

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GradiantButton extends StatelessWidget {
  const GradiantButton({super.key, required this.start, required this.end});
  final Color start;
  final Color end;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      // margin: EdgeInsets.symmetric(vertical: 20),
      margin: EdgeInsets.only(bottom: 20),

      decoration: BoxDecoration(gradient: LinearGradient(colors: [start, end])),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Container(
        child: Column(
          children: [
            GradiantButton(start: Colors.blue, end: Colors.green),
            GradiantButton(start: Colors.pink[400]!, end: Colors.green),
            GradiantButton(start: Colors.yellow, end: Colors.purple),
          ],
        ),
      ),
    ),
  );
}
