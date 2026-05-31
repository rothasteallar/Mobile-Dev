//EX 2 - The buttons
import 'package:flutter/material.dart';

enum IconPosistion { left, rigth }

enum ButtonType { primary, secondary, disabled }

class CustomButton extends StatelessWidget {
  final String label;
  final IconData myIcon;
  final IconPosistion iconPosistion;
  final ButtonType buttonType;

  const CustomButton({
    required this.label,
    required this.myIcon,
    this.iconPosistion = IconPosistion.left,
    this.buttonType = ButtonType.primary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40),
      decoration: BoxDecoration(
        color: buttonType == ButtonType.secondary ? Colors.green : Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Row(
          children: iconPosistion == IconPosistion.left
              ? [
                  Icon(myIcon),
                  Text(
                    label,
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                ]
              : [
                  Text(
                    label,
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                  Icon(myIcon),
                ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Custom buttons',
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
              ),
              CustomButton(label: "Submit", myIcon: Icons.check),
              SizedBox(height: 20),
              CustomButton(
                label: "Time",
                myIcon: Icons.timeline,
                iconPosistion: IconPosistion.rigth,
                buttonType: ButtonType.secondary,
              ),
              SizedBox(height: 20),
              CustomButton(
                label: "Account",
                myIcon: Icons.account_box,
                iconPosistion: IconPosistion.rigth,
                buttonType: ButtonType.disabled,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
