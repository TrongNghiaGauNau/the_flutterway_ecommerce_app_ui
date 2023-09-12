import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_flutterway_ecommerce_app_ui/models/Product.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/details/components/body.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/details/components/top_rounded_container.dart';
import 'package:the_flutterway_ecommerce_app_ui/size_config.dart';

import '../../components/default_button.dart';
import 'components/custom_app_bar.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = '/details';

  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductDetailArgument product;
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: const Color(0xFFF5f6F9),
        appBar: CustomAppbar(context, 4.5),
        body: const Body(),
    );
  }


}

class ProductDetailArgument {
  final Product product;

  ProductDetailArgument({required this.product});
}
