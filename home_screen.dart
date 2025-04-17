
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/database_service.dart';
import '../models/restaurant.dart';
import '../widgets/restaurant_card.dart';

class HomeScreen extends StatelessWidget {
  final db = DatabaseService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Restaurants')),
      body: StreamBuilder<List<Restaurant>>(
        stream: db.getRestaurants(),
        builder: (context, snapshot) {
          if (snapshot.hasError) return Center(child: Text('Error loading data'));
          if (!snapshot.hasData) return Center(child: CircularProgressIndicator());

          final restaurants = snapshot.data!;
          return ListView.builder(
            itemCount: restaurants.length,
            itemBuilder: (context, index) => RestaurantCard(restaurant: restaurants[index]),
          );
        },
      ),
    );
  }
}
