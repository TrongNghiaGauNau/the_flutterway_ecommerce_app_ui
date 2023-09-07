import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class CustomSurfixIcon extends StatelessWidget{
  const CustomSurfixIcon({super.key,required this.svgIcon});

  final String svgIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateWidth(20),
        getProportionateWidth(20),
        getProportionateWidth(20),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateWidth(18),
      ),
    );
  }
}