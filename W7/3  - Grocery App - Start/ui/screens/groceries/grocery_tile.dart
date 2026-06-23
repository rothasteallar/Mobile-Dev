import 'package:flutter/material.dart';

import '../../../models/grocery.dart';

// ---------------------------------------------
// Create a new stateless widget : GroceryTile
// ---------------------------------------------
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

// The widget shall take as required parameter a Grocery  

// 	Use a ListTile widget to layout the elements


// https://api.flutter.dev/flutter/material/ListTile-class.html