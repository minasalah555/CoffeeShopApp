class ProductModel {
  final String title;
  final String description;
  final String image;
  final num price;

  ProductModel({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      title: jsonData['title'],
      description: jsonData['description'],
      price: jsonData['price'],
      image: jsonData['image'],
    );
  }
}
