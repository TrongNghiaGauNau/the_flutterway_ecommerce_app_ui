import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/home/components/section_title.dart';

import '../../../size_config.dart';

class SpecialOffers extends StatelessWidget{
  const SpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(press: () {}, text: 'Special for you'),
        SizedBox(height: getProportionateWidth(20),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                category: 'Smartphone',
                image: 'assets/images/Image Banner 2.png',
                numOfBrands: 18,
                press: () {},
              ),
              SpecialOfferCard(
                category: 'Fashion',
                image: 'assets/images/Image Banner 3.png',
                numOfBrands: 24,
                press: () {},
              ),
              SizedBox(width: getProportionateWidth(20),),
            ],
          ),
        ),
      ],
    );
  }
}
class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    super.key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  });

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateWidth(20)),
      child: SizedBox(
        width: getProportionateWidth(242),
        height: getProportionateWidth(100),
        child: ClipRect(
          // borderRadius: BorderRadius.circular(50.0),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xFF343434).withOpacity(0.4),
                      const Color(0xFF343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Text.rich(
                TextSpan(
                  style: const TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                      text: '${category}\n',
                      style: TextStyle(
                        fontSize: getProportionateWidth(18),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: '$numOfBrands Brands')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}