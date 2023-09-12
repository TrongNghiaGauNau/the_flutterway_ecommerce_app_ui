import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    super.key,
    required this.press,
  });
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return BackButton(
      onPressed: press,
    );
  }
}