import 'package:flutter/material.dart';

class SelectButton extends StatefulWidget {
  const SelectButton({super.key});

  @override
  State<SelectButton> createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    String buttonText;
    Color buttonColor;
    Color textColor;

    if (isSelected == true) {
      buttonText = "Selected";
      buttonColor = Colors.blue;
      textColor = Colors.white;
    } else {
      buttonText = "Not Selected";
      buttonColor = Colors.blue[50]!;
      textColor = Colors.black;
    }

    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
        onPressed: () {
          setState(() {
            if (isSelected == true) {
              isSelected = false;
            } else {
              isSelected = true;
            }
          });
        },
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(color: textColor, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Custom buttons")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectButton(),
            SizedBox(height: 20),
            SelectButton(),
            SizedBox(height: 20),
            SelectButton(),
            SizedBox(height: 20),
            SelectButton(),
          ],
        ),
      ),
    ),
  ),
);
