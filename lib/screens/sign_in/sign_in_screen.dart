import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/sign_in/components/body.dart';

import '../../size_config.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  static String routeName = '/sign_in';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign in',
          textAlign: TextAlign.center,
        ),
      ),
      body: const Body(),
    );
  }
}

