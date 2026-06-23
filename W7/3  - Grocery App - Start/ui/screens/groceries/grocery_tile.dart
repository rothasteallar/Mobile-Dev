<<<<<<< HEAD
import 'package:flutter/material.dart';

import '../../../models/grocery.dart';
=======
>>>>>>> 2a368f0933b43bf47dcf5b2776a6375cffc0eaff

// ---------------------------------------------
// Create a new stateless widget : GroceryTile
// ---------------------------------------------
<<<<<<< HEAD
class GroceryItemTile extends StatelessWidget {
  const GroceryItemTile({super.key, required this.groceryItem});
  final GroceryItem groceryItem;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 15,
        height: 15,
        color: groceryItem.category.color,
      ),
      title: Text(groceryItem.name),
      trailing: Text("${groceryItem.quantity}"),
    );
  }
}
=======

>>>>>>> 2a368f0933b43bf47dcf5b2776a6375cffc0eaff

// The widget shall take as required parameter a Grocery  

// 	Use a ListTile widget to layout the elements


// https://api.flutter.dev/flutter/material/ListTile-class.html