class Product {
  final String id;
  final String name;
  final String category;
  final String description;
  final String imageUrl;
  final double price;
  int quantity;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.quantity,
  });
}
