import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/round_icon_btn.dart';
import '../../../size_config.dart';

PreferredSize CustomAppbar(BuildContext context,final double rating) {
  return PreferredSize(
    preferredSize: Size.fromHeight(AppBar().preferredSize.height),
    child: SafeArea(
      child: Padding(
        padding:
        EdgeInsets.symmetric(horizontal: getProportionateWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundIconButton(press: () => Navigator.pop(context)),
            Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Text(
                    rating.toString(),
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset('assets/icons/Star Icon.svg'),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}