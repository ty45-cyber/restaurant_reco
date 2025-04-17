
import 'package:flutter/material.dart';
import '../models/restaurant.dart';

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantCard({required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      child: ListTile(
        leading: Image.network(restaurant.imageUrl, width: 60, fit: BoxFit.cover),
        title: Text(restaurant.name),
        subtitle: Text('\${restaurant.cuisine} • \${restaurant.rating.toString()} ⭐'),
      ),
    );
  }
}
