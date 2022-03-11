class Category {
  final String id;
  final String name;
  final String imageUrl;
  bool isSelected = false;
  bool isActive;

  Category({
    required this.id,
    required this.name,
    required this.imageUrl,
    // required this.isSelected,
    required this.isActive,
  });
}
