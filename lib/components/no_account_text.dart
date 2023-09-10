import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/forgot_password/forgot_password_screen.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/sign_up/sign_up_screen.dart';
import '../constant.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: TextStyle(fontSize: getProportionateWidth(16)),
        ),
        GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed(SignUpScreen.routeName);
          },
          child: Text(
            'Sign Up',
            style: TextStyle(
                fontSize: getProportionateWidth(16), color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
