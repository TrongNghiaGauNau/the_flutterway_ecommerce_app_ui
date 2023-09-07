import 'package:flutter/widgets.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/sign_in/sign_in_screen.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/splash/splash_screen.dart';

final Map<String,WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
};