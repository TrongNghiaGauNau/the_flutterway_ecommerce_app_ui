import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/home/components/discount_banner.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/home/components/home_header.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/home/components/popular_product.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/home/components/special_offers.dart';
import 'package:the_flutterway_ecommerce_app_ui/size_config.dart';

import 'categories.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateWidth(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateWidth(30)),
            const DiscountBanner(),
            SizedBox(height: getProportionateWidth(30)),
            const Categories(),
            SizedBox(height: getProportionateWidth(30)),
            const SpecialOffers(),
            SizedBox(height: getProportionateWidth(30)),
            const PopularProduct(),
            SizedBox(height: getProportionateWidth(30)),
          ],
        ),
      ),
    );
  }
}


