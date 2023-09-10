import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/complete_profile/complete_profile_screen.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_button.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateHeight(20),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateHeight(20),
          ),
          buildConfirmPasswordFormField(),
          SizedBox(
            height: getProportionateHeight(40),
          ),
          DefaultButton(text: 'Continue', press: (){
            Navigator.of(context).pushNamed(CompleteProfileScreen.routeName);
          }),
        ],
      ),
    );
  }
}

TextFormField buildEmailFormField() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    validator: (value) {
      if (value!.isEmpty) {}
      return null;
    },
    decoration: const InputDecoration(
      labelText: 'Email',
      hintText: 'Enter your email',
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: CustomSurfixIcon(svgIcon: 'assets/icons/Mail.svg'),
    ),
  );
}

TextFormField buildPasswordFormField() {
  return TextFormField(
    obscureText: true,
    validator: (value) {
      if (value!.isEmpty) {}
      return null;
    },
    decoration: const InputDecoration(
      labelText: 'Password',
      hintText: 'Enter your password',
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: CustomSurfixIcon(svgIcon: 'assets/icons/Lock.svg'),
    ),
  );
}

TextFormField buildConfirmPasswordFormField() {
  return TextFormField(
    obscureText: true,
    validator: (value) {
      if (value!.isEmpty) {}
      return null;
    },
    decoration: const InputDecoration(
      labelText: 'Confirm password',
      hintText: 'Re-enter your password',
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: CustomSurfixIcon(svgIcon: 'assets/icons/Lock.svg'),
    ),
  );
}
