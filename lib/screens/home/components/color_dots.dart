import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 0;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
                (index) => ColorDot(
                color: product.colors[index],
                isSelected: selectedColor == index),
          ),
          const Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
          SizedBox(width: getProportionateWidth(15),),
          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      padding: const EdgeInsets.all(8),
      height: getProportionateWidth(40),
      width: getProportionateWidth(40),
      decoration: BoxDecoration(
        // color: product.colors[0],
        shape: BoxShape.circle,
        border:
        Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
