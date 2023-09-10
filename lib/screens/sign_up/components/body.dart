import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/components/default_button.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/sign_up/components/sign_up_form.dart';
import 'package:the_flutterway_ecommerce_app_ui/size_config.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/social_card.dart';
import '../../../constant.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight! * 0.03,
              ),
              Text(
                'Register Account',
                style: headingStyle,
              ),
              const Text(
                'Complete your detail or continue \nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.08,
              ),
              const SignUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.08,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: 'assets/icons/google-icon.svg',
                    press: () {},
                  ),
                  SocialCard(
                    icon: 'assets/icons/facebook-2.svg',
                    press: () {},
                  ),
                  SocialCard(
                    icon: 'assets/icons/twitter.svg',
                    press: () {},
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateHeight(20),
              ),
              const Text(
                'By continuing your confirm that you agree \nwith out Term and Condition',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
