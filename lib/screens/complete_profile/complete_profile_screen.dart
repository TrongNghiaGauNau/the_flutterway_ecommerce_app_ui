import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/complete_profile/components/body.dart';
import '../../size_config.dart';

class CompleteProfileScreen extends StatelessWidget{
  static String routeName = '/complete_profile';
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complete Profile'),
      ),
      body: const Body(),
    );
  }
}