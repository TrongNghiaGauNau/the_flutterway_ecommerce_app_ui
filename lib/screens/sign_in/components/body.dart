import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/size_config.dart';
import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(20)),
          child: Column(
            children: [
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
              SignForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateHeight(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateHeight(20)),
          DefaultButton(
            press: () {},
            text: 'Continue',
          ),
        ],
      ),
    );
  }
}

TextFormField buildEmailFormField() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    validator: (value) {
      if (value!.isEmpty) {

      }
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
    decoration: const InputDecoration(
      labelText: 'Password',
      hintText: 'Enter your password',
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: CustomSurfixIcon(svgIcon: 'assets/icons/Lock.svg'),
    ),
  );
}
