import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavorite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0,
    this.isFavorite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

//Demo Product
List<Product> demoProduct = [
  Product(
    id: 0,
    images: [
      'assets/images/ps4_console_white_1.png',
      'assets/images/ps4_console_white_2.png',
      'assets/images/ps4_console_white_3.png',
      'assets/images/ps4_console_white_4.png',
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: 'Wireless Controller for PS4',
    price: 64.99,
    description: 'description descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription',
    rating: 4.8,
    isFavorite: true,
    isPopular: true,
  ),
  Product(
    id:1,
    images: [
      'assets/images/ps4_console_white_2.png',
      'assets/images/ps4_console_white_1.png',
      'assets/images/ps4_console_white_3.png',
      'assets/images/ps4_console_white_4.png',
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: 'Wireless Controller for PS4',
    price: 64.99,
    description: 'description',
    rating: 4.8,
    isFavorite: false,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      'assets/images/ps4_console_white_4.png',
      'assets/images/ps4_console_white_1.png',
      'assets/images/ps4_console_white_2.png',
      'assets/images/ps4_console_white_3.png',
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: 'Wireless Controller for PS4',
    price: 64.99,
    description: 'description',
    rating: 4.8,
    isFavorite: true,
    isPopular: true,
  ),

];