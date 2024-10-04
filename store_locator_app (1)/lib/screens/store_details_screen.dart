
import 'package:flutter/material.dart';
import '../models/store_model.dart';
import 'package:url_launcher/url_launcher.dart';

class StoreDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Store store = ModalRoute.of(context)!.settings.arguments as Store;

    return Scaffold(
      appBar: AppBar(
        title: Text(store.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Address: ${store.address}'),
            Text('Contact: ${store.contactNumber}'),
            TextButton(
              onPressed: () => launch('tel:${store.contactNumber}'),
              child: Text('Call Store'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/mapScreen', arguments: store),
              child: Text('View on Map'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: store.products.length,
                itemBuilder: (context, index) {
                  final product = store.products[index];
                  return ListTile(
                    title: Text(product.name),
                    subtitle: Text('Price: \$${product.price}'),
                    trailing: product.availability ? Icon(Icons.check_circle, color: Colors.green) : Icon(Icons.cancel, color: Colors.red),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
