
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(StoreLocatorApp());
}

class StoreLocatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Store Locator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
      routes: {
        '/storeDetails': (context) => StoreDetailsScreen(),
        '/mapScreen': (context) => MapScreen(),
      },
    );
  }
}
