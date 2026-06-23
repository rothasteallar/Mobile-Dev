import 'package:flutter/material.dart';
import 'package:homework_w05/W07-%20LabClass/1%20-%20START%20CODE/3%20%20-%20Grocery%20App%20-%20Start/ui/screens/groceries/grocery_form.dart';
import 'package:homework_w05/W07-%20LabClass/1%20-%20START%20CODE/3%20%20-%20Grocery%20App%20-%20Start/ui/screens/groceries/grocery_tile.dart';
import '../../../data/mock_grocery_data.dart';

class GroceryScreen extends StatefulWidget {
  const GroceryScreen({super.key});

  @override
  State<GroceryScreen> createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
  void onCreate() {
    showModalBottomSheet(
      context: context,
      builder: (myContext) {
        return GroceryForm();
      },
    ).then((newItem) {
      if (newItem == null) {
        return;
      }

      setState(() {
        allGroceryItems.add(newItem);
      });
    });

    // ---------------------------------------------
    // Navigate to the form screen using showModalBottomSheet
    // ---------------------------------------------

    // https://api.flutter.dev/flutter/material/showModalBottomSheet.html
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

      content = ListView.builder(
        itemCount: allGroceryItems.length,
        itemBuilder: (context, index) {
          return GroceryTile(grocery: allGroceryItems[index]);
        },
      );
    }




    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
        actions: [IconButton(onPressed: onCreate, icon: const Icon(Icons.add))],
      ),
      body: content,
    );
  }
}
