import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    required this.press,
    this.width = 140,
    this.aspectRatio = 1.02,
  });

  final double width, aspectRatio;
  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateWidth(width),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(getProportionateWidth(20)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                product.title,
                style: const TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${demoProduct[0].price}',
                    style: TextStyle(
                      fontSize: getProportionateWidth(18),
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      padding: EdgeInsets.all(getProportionateWidth(8)),
                      width: getProportionateWidth(28),
                      height: getProportionateWidth(28),
                      decoration: BoxDecoration(
                        color: product.isFavorite
                            ? kPrimaryColor.withOpacity(0.15)
                            : kSecondaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/Heart Icon_2.svg',
                        color: product.isFavorite
                            ? const Color(0xFFFF4848)
                            : const Color(0xFFDBDEF4),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}