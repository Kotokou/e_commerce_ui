import 'package:e_commerce_ui/models/product_model.dart';

class OrderModel {
  final ProductModel productModel;
  final int qte;

  const OrderModel({
    required this.productModel,
    this.qte = 1,
  });
}
