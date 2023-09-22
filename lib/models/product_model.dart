import 'package:e_commerce_ui/constants/asset.dart';

class ProductModel {
  final String label;
  final String image;
  final String price;

  ProductModel({
    this.image = Asset.image1,
    this.label = "Honey lime combo",
    this.price = "2000",
  });
}
