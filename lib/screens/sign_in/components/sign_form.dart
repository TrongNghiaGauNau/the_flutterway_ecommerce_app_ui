import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/forgot_password/forgot_password_screen.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/login_success/login_success_screen.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constant.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = ['Demo error'];
  late String email, password;
  bool remember = false;

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
          Row(
            children: [
              Checkbox(
                  value: remember,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value!;
                    });
                  }),
              const Text('Remember me'),
              const Spacer(),
              GestureDetector(
                onTap: ()=> Navigator.pushNamed(context, ForgotPasswordScreen.routeName),
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateHeight(20),
          ),
          DefaultButton(
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
            text: 'Continue',
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          setState(() {
            errors.add('Please enter your email');
          });
        }
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
        if (value!.isEmpty) {
          setState(() {
            errors.add('Please enter your password');
          });
        }
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
}