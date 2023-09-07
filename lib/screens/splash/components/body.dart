import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/components/default_button.dart';
import 'package:the_flutterway_ecommerce_app_ui/constant.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/sign_in/sign_in_screen.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/splash/components/splash_content.dart';
import 'package:the_flutterway_ecommerce_app_ui/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State createState() {
    return _BodyState();
  }
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      'text': 'Welcome to GauNau,Let\'s shop!',
      'image': 'assets/images/splash_1.png'
    },
    {
      'text': 'We help people connect with store \n around the world',
      'image': 'assets/images/splash_2.png'
    },
    {
      'text': 'We show the easy way to shop \n Just stay at home with us',
      'image': 'assets/images/splash_3.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: splashData.length,
              itemBuilder: (context, index) => SplashContent(
                text: splashData[index]['text']!,
                image: splashData[index]['image']!,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: getProportionateWidth(20)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => buildDot(index),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  DefaultButton(
                    text: 'Continue',
                    press: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
