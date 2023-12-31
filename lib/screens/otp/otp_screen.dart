import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/otp/components/body.dart';

import '../../size_config.dart';

class OtpScreen extends StatelessWidget{
  static String routeName = '/otp';
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification'),
      ),
      body: const Body(),
    );
  }
}