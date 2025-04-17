
class Restaurant {
  final String id;
  final String name;
  final String cuisine;
  final String imageUrl;
  final double rating;

  Restaurant({required this.id, required this.name, required this.cuisine, required this.imageUrl, required this.rating});

  factory Restaurant.fromMap(Map<String, dynamic> data, String id) {
    return Restaurant(
      id: id,
      name: data['name'],
      cuisine: data['cuisine'],
      imageUrl: data['imageUrl'],
      rating: data['rating'].toDouble(),
    );
  }
}
