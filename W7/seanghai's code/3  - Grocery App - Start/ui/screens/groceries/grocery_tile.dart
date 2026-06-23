// ---------------------------------------------
// Create a new stateless widget : GroceryTile
// ---------------------------------------------


import 'package:flutter/material.dart';
import 'package:homework_w05/W07-%20LabClass/1%20-%20START%20CODE/3%20%20-%20Grocery%20App%20-%20Start/models/grocery.dart';

class GroceryTile extends StatelessWidget {
  const GroceryTile({super.key, required this.grocery}); //parameter require

  final GroceryItem grocery;

  @override
  Widget build(BuildContext context) {
    return ListTile(    // use listtile
      leading: Container(
        width: 15,
        height: 15,
        color: grocery.category.color,
      ),
      title: Text(grocery.name),
      trailing: Text(grocery.quantity.toString()),
    );
    
  }
}




// The widget shall take as required parameter a Grocery  

// 	Use a ListTile widget to layout the elements


// https://api.flutter.dev/flutter/material/ListTile-class.html