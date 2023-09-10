import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/components/default_button.dart';
import 'package:the_flutterway_ecommerce_app_ui/components/form_error.dart';
import 'package:the_flutterway_ecommerce_app_ui/components/no_account_text.dart';
import 'package:the_flutterway_ecommerce_app_ui/size_config.dart';

import '../../../components/custom_surfix_icon.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(20)),
          child: Column(
            children: [
              Text(
                'Forgot Password',
                style: TextStyle(
                  fontSize: getProportionateWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Please enter your email and we will send \nyou a link to return to your account',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.1),
              const ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget{
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  List<String> errors  =[];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
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
        ),
        SizedBox(height: getProportionateHeight(30),),
        FormError(errors: errors),
        SizedBox(height: SizeConfig.screenHeight! * 0.1),
        DefaultButton(text:'Continue',press: (){},),
        SizedBox(height: SizeConfig.screenHeight! * 0.1),
        const NoAccountText(),
      ],
    );

  }
}
