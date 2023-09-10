import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/components/default_button.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/home/home_screen.dart';
import 'package:the_flutterway_ecommerce_app_ui/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight! * 0.04,
        ),
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            fit: BoxFit.fill,
            'assets/images/success.png',
            height: SizeConfig.screenHeight! * 0.4,
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight! * 0.08,
        ),
        Text(
          'Login Success',
          style: TextStyle(
            fontSize: getProportionateWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        SizedBox(
            width: SizeConfig.screenWidth! * 0.6,
            child: DefaultButton(
              text: 'Back to home',
              press: () {
                Navigator.of(context).pushNamed(HomeScreen.routeName);
              },
            )),
        const Spacer(),
      ],
    );
  }
}
