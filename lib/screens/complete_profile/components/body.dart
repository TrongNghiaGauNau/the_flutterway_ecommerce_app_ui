import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/components/default_button.dart';
import 'package:the_flutterway_ecommerce_app_ui/constant.dart';
import 'package:the_flutterway_ecommerce_app_ui/size_config.dart';

import '../../../components/custom_surfix_icon.dart';
import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight! * 0.05,
          ), //5
          Text(
            'Complete Profile',
            style: headingStyle,
          ),
          const Text(
            'Complete your detail or continue \nwith social media',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.05,
          ), //5%
          const CompleteProfileForm(),
          SizedBox(
            height: getProportionateHeight(30),
          ),
          const Text(
            'By continuing your confirm that you agree \nwith our Term and Condition',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
