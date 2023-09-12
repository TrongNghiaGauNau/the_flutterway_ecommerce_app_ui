import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    super.key,
  });

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(demoProduct[0].images[selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(demoProduct[0].images.length,
                    (index) => buildSmallPreview(index))
          ],
        ),
      ],
    );
  }

  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getProportionateWidth(15)),
        padding: EdgeInsets.all(getProportionateWidth(8)),
        height: getProportionateWidth(48),
        width: getProportionateWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selectedImage == index ? kPrimaryColor : Colors.transparent,
          ),
        ),
        child: Image.asset(demoProduct[0].images[index]),
      ),
    );
  }
}
