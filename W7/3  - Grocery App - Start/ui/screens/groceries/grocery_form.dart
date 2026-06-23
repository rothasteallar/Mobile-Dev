<<<<<<< HEAD
import 'package:flutter/material.dart';
import '../../../models/grocery.dart';
=======
>>>>>>> 2a368f0933b43bf47dcf5b2776a6375cffc0eaff

// ---------------------------------------------
// Create a new statefull widget : GroceryForm
// ---------------------------------------------
<<<<<<< HEAD
class GroceryItemForm extends StatefulWidget {
  const GroceryItemForm({super.key});

  @override
  State<GroceryItemForm> createState() => _GroceryItemFormState();
}

class _GroceryItemFormState extends State<GroceryItemForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.arrow_back_ios)),
        ],
        title: const Text("Add a new item"),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Name'),
              maxLength: 50,
            ),
            TextField(decoration: InputDecoration(labelText: 'Quantity')),
          ],
        ),
      ),
    );
  }
}
// The form shall be composed of 2 text fields:
// -	Name of the grocery item
//-	Quantity (number only)
=======
  
// The form shall be composed of 2 text fields:
// -	Name of the grocery item
 //-	Quantity (number only)
>>>>>>> 2a368f0933b43bf47dcf5b2776a6375cffc0eaff

// ⚠️  For now we don’t select the grocery type, we assume it’s always food

// The form shall be composed of 2 buttons:
//-	Cancel button
// -	Add item button
