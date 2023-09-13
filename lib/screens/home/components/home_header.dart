import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/cart/cart_screen.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/home/components/search_field.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget{
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconBtnWithCounter(
            svgSrc: 'assets/icons/Cart Icon.svg',
            press: () {
              Navigator.of(context).pushNamed(CartScreen.routeName);
            },
          ),
          IconBtnWithCounter(
            svgSrc: 'assets/icons/Bell.svg',
            press: () {},
            numOfItems: 3,
          ),
        ],
      ),
    );
  }
}