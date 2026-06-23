import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:main_project/W7/3%20%20-%20Grocery%20App%20-%20Start/ui/screens/groceries/grocery_tile.dart';
import '../../../data/mock_grocery_data.dart';
import 'grocery_form.dart';
=======
import '../../../data/mock_grocery_data.dart';
>>>>>>> 2a368f0933b43bf47dcf5b2776a6375cffc0eaff

class GroceryScreen extends StatefulWidget {
  const GroceryScreen({super.key});

  @override
  State<GroceryScreen> createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
<<<<<<< HEAD
  void onCreate(BuildContext context) {
=======
  void onCreate() {
    
>>>>>>> 2a368f0933b43bf47dcf5b2776a6375cffc0eaff
    // ---------------------------------------------
    // Navigate to the form screen using showModalBottomSheet
    // ---------------------------------------------

    // https://api.flutter.dev/flutter/material/showModalBottomSheet.html
<<<<<<< HEAD
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => GroceryItemForm(),
    );
=======
>>>>>>> 2a368f0933b43bf47dcf5b2776a6375cffc0eaff
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(child: Text('No items added yet.'));

    if (allGroceryItems.isNotEmpty) {
      // ---------------------------------------------
      //  Loop on groceries with an ListView builder
      //  For each grocery items, create a GroceryTile (grocery_tile.dart)
      // ---------------------------------------------
      // https://api.flutter.dev/flutter/widgets/ListView-class.html
<<<<<<< HEAD
      content = ListView.builder(
        itemCount: allGroceryItems.length,
        itemBuilder: (context, index) {
          return GroceryItemTile(groceryItem: allGroceryItems[index]);
        },
      );
=======
>>>>>>> 2a368f0933b43bf47dcf5b2776a6375cffc0eaff
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
<<<<<<< HEAD
        actions: [
          IconButton(
            onPressed: () => onCreate(context),
            icon: const Icon(Icons.add),
          ),
        ],
=======
        actions: [IconButton(onPressed: () => {}, icon: const Icon(Icons.add))],
>>>>>>> 2a368f0933b43bf47dcf5b2776a6375cffc0eaff
      ),
      body: content,
    );
  }
}
