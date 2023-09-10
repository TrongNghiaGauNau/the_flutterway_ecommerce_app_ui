import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_flutterway_ecommerce_app_ui/constant.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/sign_in/components/sign_form.dart';
import 'package:the_flutterway_ecommerce_app_ui/size_config.dart';

import '../../../components/no_account_text.dart';
import '../../../components/social_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight! * 0.04,),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Sign in with your email ans password \nor continue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.08,),
                const SignForm(),
                SizedBox(height: SizeConfig.screenHeight! * 0.08,),
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
                SizedBox(height: getProportionateHeight(20),),
                const NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
