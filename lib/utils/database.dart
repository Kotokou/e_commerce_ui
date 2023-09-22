import 'package:e_commerce_ui/constants/asset.dart';
import 'package:e_commerce_ui/models/order_model.dart';
import 'package:e_commerce_ui/models/product_model.dart';

List<ProductModel> productList = [
  ProductModel(
    image: Asset.image1,
    label: "Honey lime combo",
    price: "2,000",
  ),
  ProductModel(
    image: Asset.image2,
    label: "Berry mango combo",
    price: "8,000",
  ),
  ProductModel(
    image: Asset.image3,
    label: "Quinoa fruit salad",
    price: "10,000",
  ),
  ProductModel(
    image: Asset.image4,
    label: "Tropical fruit salad",
    price: "9,000",
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
      image: Asset.image1,
      label: "Tropical fruit salad",
      price: "9,000",
    ),
    qte: 1,
  ),
  OrderModel(
    productModel: ProductModel(
      image: Asset.image2,
      label: "Quinoa fruit salad",
      price: "10,000",
    ),
    qte: 3,
  ),
  OrderModel(
    productModel: ProductModel(
      image: Asset.image3,
      label: "Berry mango combo",
      price: "8,000",
    ),
    qte: 20,
  ),
  OrderModel(
    productModel: ProductModel(
      image: Asset.image4,
      label: "Honey lime combo",
      price: "2,000",
    ),
    qte: 50,
  ),
];
