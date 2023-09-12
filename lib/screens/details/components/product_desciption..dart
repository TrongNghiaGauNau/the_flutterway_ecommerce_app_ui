import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';

class ProductsDescription extends StatelessWidget {
  const ProductsDescription({
    super.key,
    required this.product,
    required this.tapOnSeeMore
  });

  final Product product;
  final GestureTapCallback tapOnSeeMore;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(20)),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateWidth(15)),
            width: getProportionateWidth(64),
            decoration: BoxDecoration(
                color:
                product.isFavorite ? Color(0xFFFFE6E6) : Color(0xFFF5F6F9),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                )),
            child: SvgPicture.asset(
              'assets/icons/Heart Icon_2.svg',
              color: product.isFavorite ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateWidth(20),
            right: getProportionateWidth(64),
          ),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateWidth(20),
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: tapOnSeeMore,
            child: const Row(
              children: [
                Text(
                  'See more Detail',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 5,),
                Icon(Icons.arrow_forward_ios,size: 12,color: kPrimaryColor,),
              ],
            ),
          ),
        )
      ],
    );
  }
}


