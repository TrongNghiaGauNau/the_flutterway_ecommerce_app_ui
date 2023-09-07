import 'package:flutter/material.dart';

import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({super.key, required this.text, required this.press});

  final String text;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateHeight(56),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
