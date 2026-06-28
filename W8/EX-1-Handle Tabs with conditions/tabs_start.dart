import 'package:flutter/material.dart';

class GreenScreen extends StatelessWidget {
  const GreenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(child: Text("Green Screen")),
    );
  }
}

class RedScreen extends StatelessWidget {
  const RedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(child: Text("Red Screen")),
    );
  }
}

class BlueScreen extends StatelessWidget {
  const BlueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(child: Text("Blue Screen")),
    );
  }
}

enum AppTabs { red, green, blue }

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  AppTabs currentTab = AppTabs.red;

  void changeColor(AppTabs tab) {
    setState(() {
      currentTab = tab;
    });
  }

  Widget get content {
    switch (currentTab) {
      case AppTabs.red:
        return RedScreen();

      case AppTabs.blue:
        return BlueScreen();

      case AppTabs.green:
        return GreenScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tabs navigation")),
      body: content,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () => changeColor(AppTabs.red),
              icon: Icon(Icons.home),
              color: Colors.red,
            ),
            IconButton(
              onPressed: () => changeColor(AppTabs.blue),
              icon: Icon(Icons.home),
              color: Colors.blue,
            ),
            IconButton(
              onPressed: () => changeColor(AppTabs.green),
              icon: Icon(Icons.home),
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: App()));
}
