
import 'package:flutter/material.dart';
import '../models/store_model.dart';
import '../widgets/store_tile.dart';

class HomeScreen extends StatelessWidget {
  final List<Store> storeList = [
    // Add some sample stores here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store Locator'),
      ),
      body: ListView.builder(
        itemCount: storeList.length,
        itemBuilder: (context, index) {
          return StoreTile(store: storeList[index]);
        },
      ),
    );
  }
}
