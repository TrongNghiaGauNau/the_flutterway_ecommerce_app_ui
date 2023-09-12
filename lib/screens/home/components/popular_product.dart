import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/details/details_screen.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/home/components/product_card.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/home/components/section_title.dart';

import '../../../models/Product.dart';
import '../../../size_config.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(press: () {}, text: 'Popular Product'),
        SizedBox(
          height: getProportionateWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProduct.length,
                (index) => ProductCard(
                  product: demoProduct[index],
                  press: () => Navigator.of(context).pushNamed(
                    DetailScreen.routeName,
                    arguments:
                        ProductDetailArgument(product: demoProduct[index]),
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
