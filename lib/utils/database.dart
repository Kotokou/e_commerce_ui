import 'package:e_commerce_ui/constants/asset.dart';
import 'package:e_commerce_ui/models/order_model.dart';
import 'package:e_commerce_ui/models/product_model.dart';
import 'package:flutter/material.dart';

List<ProductModel> productList = [
  ProductModel(
    image: Asset.productImage1,
    label: "Honey lime combo",
    price: "2,000",
  ),
  ProductModel(
    image: Asset.productImage2,
    label: "Berry mango combo",
    price: "8,000",
  ),
  ProductModel(
    image: Asset.productImage3,
    label: "Quinoa fruit salad",
    price: "10,000",
  ),
];
List<ProductModel> productListForDetailBecauseOfImageTooSmall = [
  ProductModel(
    image: Asset.detailImage1,
    label: "Honey lime combo",
    price: "2,000",
  ),
  ProductModel(
    image: Asset.detailImage1,
    label: "Berry mango combo",
    price: "8,000",
  ),
  ProductModel(
    image: Asset.detailImage1,
    label: "Quinoa fruit salad",
    price: "10,000",
  ),
  ProductModel(
    image: Asset.detailImage1,
    label: "Tropical fruit salad",
    price: "9,000",
  ),
];

List<OrderModel> orderList = [
  OrderModel(
    productModel: ProductModel(
      image: Asset.imageOrder1,
      label: "Tropical fruit salad",
      price: "9,000",
    ),
    qte: 1,
    color: const Color(0xFFF1EFF6),
  ),
  OrderModel(
    productModel: ProductModel(
      image: Asset.imageOrder2,
      label: "Quinoa fruit salad",
      price: "10,000",
    ),
    qte: 3,
    color: const Color(0xFFFFFAEB),
  ),
  OrderModel(
    productModel: ProductModel(
      image: Asset.imageOrder3,
      label: "Berry mango combo",
      price: "8,000",
    ),
    qte: 20,
    color: const Color(0xFFFEF0F0),
  ),
];
