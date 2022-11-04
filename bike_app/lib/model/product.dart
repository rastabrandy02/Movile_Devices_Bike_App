import 'dart:ui';

class ProductVariant {
  String name;
  Color color;
  bool selected;
  ProductVariant(this.name, this.color, this.selected);
}

class ProductFeature {
  String icon;
  num value;
  String units;
  ProductFeature(this.icon, this.value, this.units);
}

class Product {
  String brand, model, description, imageAsset;
  double price;
  bool favorite;
  List<ProductVariant> variants;
  List<ProductFeature> features;

  Product({
    required this.brand,
    required this.model,
    required this.description,
    required this.price,
    required this.favorite,
    required this.imageAsset,
    this.variants = const [],
    this.features = const [],
  });
}
