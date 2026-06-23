// ---------------------------------------------
// Create a new statefull widget : GroceryForm
// ---------------------------------------------

// The form shall be composed of 2 text fields:
// -	Name of the grocery item
//-	Quantity (number only)

// ⚠️  For now we don’t select the grocery type, we assume it’s always food

// The form shall be composed of 2 buttons:
//-	Cancel button
// -	Add item button

import 'package:flutter/material.dart';
import 'package:homework_w05/W07-%20LabClass/1%20-%20START%20CODE/3%20%20-%20Grocery%20App%20-%20Start/models/grocery.dart';

class GroceryForm extends StatefulWidget {
  const GroceryForm({super.key});

  @override
  State<GroceryForm> createState() => _GroceryFormState();
}

class _GroceryFormState extends State<GroceryForm> {
  // contrller
  final TextEditingController nameController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();

  void addItem() {
    final name= nameController.text;
    final quantity = int.tryParse(quantityController.text);

    if (name.isEmpty || quantity == null) {
      return;
    }

    final newItem = GroceryItem(
      id: DateTime.now().toString(),
      name: name,
      quantity: quantity,
      category: GroceryCategory.other,
    );

    Navigator.pop(context, newItem);
  }

  void cancel() {
    Navigator.pop(context);
  }

  @override
  void dispose() {
    nameController.dispose();
    quantityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: nameController,
            maxLength: 50,
            decoration: InputDecoration(labelText: 'Name'),
          ),
          TextField(
            controller: quantityController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Quantity'),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: cancel, child: Text("Cancel")),
              ElevatedButton(onPressed: addItem, child: Text("Add Item")),
            ],
          ),
        ],
      ),
    );
  }
}
