class ProductModel {
  final String imageUrl;
  final String title;
  final double price;
  final double oldPrice;
  final int salesCount;
  final bool isFavorite;
  final String sectionName;
  final List<String> offers;
  ProductModel({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.oldPrice,
    required this.salesCount,
    required this.sectionName,
    required this.offers,
    this.isFavorite = false,
  });
}
