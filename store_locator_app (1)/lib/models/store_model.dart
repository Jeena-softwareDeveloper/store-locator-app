
class Store {
  final String name;
  final String address;
  final String contactNumber;
  final double latitude;
  final double longitude;
  final List<Product> products;

  Store({
    required this.name,
    required this.address,
    required this.contactNumber,
    required this.latitude,
    required this.longitude,
    required this.products,
  });

  // Convert to map for database storage
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'address': address,
      'contactNumber': contactNumber,
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}

class Product {
  final String name;
  final double price;
  final bool availability;

  Product({required this.name, required this.price, required this.availability});
}
