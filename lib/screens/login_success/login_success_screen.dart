import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'components/body.dart';

class LoginSuccessScreen extends StatelessWidget{
  const LoginSuccessScreen({super.key});
  static String routeName = '/login_success';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text('Login Success'),
      ),
      body: Body(),
    );
  }
}