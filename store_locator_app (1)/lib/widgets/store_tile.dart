
import 'package:flutter/material.dart';
import '../models/store_model.dart';

class StoreTile extends StatelessWidget {
  final Store store;

  StoreTile({required this.store});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(store.name),
        subtitle: Text(store.address),
        onTap: () => Navigator.pushNamed(context, '/storeDetails', arguments: store),
      ),
    );
  }
}
