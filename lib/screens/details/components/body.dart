import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/components/default_button.dart';
import 'package:the_flutterway_ecommerce_app_ui/constant.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/details/components/product_desciption..dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/details/components/product_images.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/details/components/top_rounded_container.dart';
import 'package:the_flutterway_ecommerce_app_ui/size_config.dart';

import '../../../models/Product.dart';
import '../../home/components/color_dots.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Product product = demoProduct[0];
    return SingleChildScrollView(
      child: Column(
        children: [
          const ProductImages(),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductsDescription(product: product, tapOnSeeMore: () {}),
                TopRoundedContainer(
                  color: const Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth! * 0.15,
                            right: SizeConfig.screenWidth! * 0.15,
                            top: getProportionateWidth(15),
                            bottom: getProportionateWidth(40),
                          ),
                          child: DefaultButton(
                            press: () {},
                            text: 'Add to Cart',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
