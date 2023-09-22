import 'package:e_commerce_ui/models/product_model.dart';
import 'package:flutter/material.dart';

class OrderModel {
  final ProductModel productModel;
  final int qte;
  final Color? color;

  const OrderModel({
    required this.productModel,
    this.qte = 1,
    required this.color,
  });
}
