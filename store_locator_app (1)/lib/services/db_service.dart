
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/store_model.dart';

class DBService {
  static Future<Database> initDB() async {
    String path = join(await getDatabasesPath(), 'store_locator.db');
    return openDatabase(path, onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE stores(id INTEGER PRIMARY KEY, name TEXT, address TEXT, contactNumber TEXT, latitude REAL, longitude REAL)',
      );
    }, version: 1);
  }

  static Future<void> insertStore(Store store) async {
    final Database db = await initDB();
    await db.insert('stores', store.toMap());
  }

  static Future<List<Store>> getStores() async {
    final Database db = await initDB();
    final List<Map<String, dynamic>> maps = await db.query('stores');
    return List.generate(maps.length, (i) {
      return Store(
        name: maps[i]['name'],
        address: maps[i]['address'],
        contactNumber: maps[i]['contactNumber'],
        latitude: maps[i]['latitude'],
        longitude: maps[i]['longitude'],
        products: [],
      );
    });
  }
}
