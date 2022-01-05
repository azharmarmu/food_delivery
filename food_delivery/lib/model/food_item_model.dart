class FoodItemModel {
  final int id;
  final String imgUrl;
  final double rating;
  final String name;
  final double price;
  final String? city;
  final double? km;

  const FoodItemModel({
    required this.id,
    required this.imgUrl,
    required this.rating,
    required this.name,
    required this.price,
    this.city,
    this.km,
  });
}
