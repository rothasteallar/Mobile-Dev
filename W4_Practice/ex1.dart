// import 'package:flutter/material.dart';

// //EX 1 - The hobbies
// //Part 1 - Build the UI

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Padding(
//           padding: EdgeInsetsGeometry.all(10),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Container(
//                 padding: EdgeInsets.symmetric(vertical: 40),
//                 decoration: BoxDecoration(
//                   color: Colors.green[500],
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Center(
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: EdgeInsetsGeometry.only(left: 30, right: 20),
//                         child: Icon(
//                           Icons.screen_search_desktop,
//                           color: Colors.white,
//                         ),
//                       ),
//                       Text(
//                         'Travelling',
//                         style: TextStyle(fontSize: 32, color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

// //Part 2 - Create a HobbyCard widget
// class HobbyCard extends StatelessWidget {
//   final String titile;
//   final IconData myIcon;
//   final Color background;

//   const HobbyCard({
//     required this.titile,
//     required this.myIcon,
//     this.background = Colors.blue,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 40),
//       decoration: BoxDecoration(
//         color: background,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Center(
//         child: Row(
//           children: [
//             Padding(
//               padding: EdgeInsetsGeometry.only(left: 30, right: 20),
//               child: Icon(myIcon, color: Colors.white),
//             ),
//             Text(titile, style: TextStyle(fontSize: 32, color: Colors.white)),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Padding(
//           padding: EdgeInsetsGeometry.all(10),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Container(
//                 padding: EdgeInsets.symmetric(vertical: 20),
//                 child: Text(
//                   'My Hobbies',
//                   style: TextStyle(color: Colors.black, fontSize: 26),
//                 ),
//               ),
//               HobbyCard(titile: "Travelling", myIcon: Icons.search),
//               SizedBox(height: 20),
//               HobbyCard(
//                 titile: "Skating",
//                 myIcon: Icons.skateboarding,
//                 background: Colors.red,
//               ),
//               SizedBox(height: 20),
//               HobbyCard(
//                 titile: "Playing Volleyball",
//                 myIcon: Icons.sports_volleyball,
//                 background: Colors.green,
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }
