import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/Cart.dart';
import '../../../size_config.dart';

class CartItemCart extends StatelessWidget {
  const CartItemCart({
    super.key,
    required this.cart,
  });
  final Cart cart;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateWidth(20),
        ),
        Column(
          children: [
            Text(
              demoCarts[0].product.title,
              style: const TextStyle(fontSize: 16, color: Colors.black),
              maxLines: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Text.rich(
              TextSpan(
                  text: "\$${cart.product.price}",
                  style: const TextStyle(color: kPrimaryColor),
                  children: [
                    TextSpan(
                      text: 'x${cart.numOfItems}',
                      style: const TextStyle(color: kTextColor),
                    ),
                  ]),
            ),
          ],
        ),
      ],
    );
  }
}