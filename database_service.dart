

import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/restaurant.dart';

class DatabaseService {
  final _db = FirebaseFirestore.instance;

  Stream<List<Restaurant>> getRestaurants() {
    return _db.collection('restaurants').snapshots().map(
          (snapshot) => snapshot.docs.map(
            (doc) => Restaurant.fromMap(doc.data(), doc.id)
          ).toList(),
        );
  }
}
