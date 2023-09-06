import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/constant.dart';
import 'package:the_flutterway_ecommerce_app_ui/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State createState() {
    return _BodyState();
  }
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              itemBuilder: (context,index) => Column(
                children: [
                  const Spacer(),
                  Text(
                    'GauNau',
                    style: TextStyle(
                      fontSize: getProportionateWidth(36),
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text('Welcome to GauNau, Let\'s shop!'),
                  const Spacer(flex: 2,),
                  Image.asset(
                    'assets/images/splash_screen_1.png',
                    height: getProportionateHeight(265),
                    width: getProportionateHeight(235),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            flex: 2,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
