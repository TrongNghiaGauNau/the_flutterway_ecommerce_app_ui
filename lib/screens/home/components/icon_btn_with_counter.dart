import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter(
      {super.key,
        required this.svgSrc,
        required this.press,
        this.numOfItems = 0});

  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateWidth(12)),
            height: getProportionateHeight(46),
            width: getProportionateWidth(46),
            decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                shape: BoxShape.circle),
            child: SvgPicture.asset(svgSrc),
          ),
          numOfItems != 0?
          Positioned(
            top: 2,
            right: 0,
            child: Container(
              height: getProportionateHeight(16),
              width: getProportionateWidth(16),
              decoration: BoxDecoration(
                color: const Color(0xFFFF4848),
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white),
              ),
              child: Center(
                child: Text(
                  '$numOfItems',
                  style: TextStyle(
                    fontSize: getProportionateWidth(10),
                    height: 1,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ):Container(),
        ],
      ),
    );
  }
}