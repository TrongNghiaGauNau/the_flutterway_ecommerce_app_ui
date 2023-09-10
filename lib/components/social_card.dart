import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({super.key, required this.icon, required this.press});

  final String icon;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateWidth(10)),
      padding: EdgeInsets.all(getProportionateWidth(12)),
      height: getProportionateHeight(40),
      width: getProportionateWidth(40),
      decoration: const BoxDecoration(
        color: Color(0xFFF5F6F9),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(icon),
    );
  }
}