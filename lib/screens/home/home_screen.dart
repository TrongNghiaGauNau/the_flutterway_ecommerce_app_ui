import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/home/components/body.dart';

import '../../size_config.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
