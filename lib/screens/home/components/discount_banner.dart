import 'package:flutter/material.dart';

import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget{
  const DiscountBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateWidth(20),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateWidth(20),
        vertical: getProportionateHeight(15),
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text.rich(
        TextSpan(
            text: 'A Summer Surprise\n',
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(
                text: "Cashback 20%",
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ]),
      ),
    );
  }
}