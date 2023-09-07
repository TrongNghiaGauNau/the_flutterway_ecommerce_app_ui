import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({super.key, required this.text, required this.image});

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          textAlign: TextAlign.center,
          'GauNau',
          style: TextStyle(
            fontSize: getProportionateWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text),
        const Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionateHeight(265),
          width: getProportionateHeight(235),
        ),
      ],
    );
  }
}
