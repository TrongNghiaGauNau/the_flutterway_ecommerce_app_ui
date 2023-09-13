import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/models/Product.dart';

class Cart{
  final Product product;
  final numOfItems;

  Cart({required this.product,required this.numOfItems});
}

List<Cart> demoCarts = [
  Cart(product: demoProduct[0], numOfItems: 2),
  Cart(product: demoProduct[1], numOfItems: 1),
  Cart(product: demoProduct[2], numOfItems: 1),
];