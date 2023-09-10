import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'components/body.dart';

class ForgotPasswordScreen extends StatelessWidget{
  static String routeName = '/forgot_password';
  const ForgotPasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Body(),
    );
  }
}