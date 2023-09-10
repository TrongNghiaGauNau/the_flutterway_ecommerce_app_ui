import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/screens/otp/otp_screen.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_button.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(20)),
        child: Column(
          children: [
            buildFirstNameFormField(),
            SizedBox(height: getProportionateHeight(30),),
            buildLastNameFormField(),
            SizedBox(height: getProportionateHeight(30),),
            buildPhoneNumberFormField(),
            SizedBox(height: getProportionateHeight(30),),
            buildAddressFormField(),
            SizedBox(height: getProportionateHeight(40),),
            DefaultButton(text: 'Continue', press: (){
              Navigator.of(context).pushNamed(OtpScreen.routeName);
            }),
          ],
        ),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          setState(() {});
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'First Name',
        hintText: 'Enter your first name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurfixIcon(svgIcon: 'assets/icons/User.svg'),
      ),
    );
  }
  TextFormField buildLastNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          setState(() {});
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Last Name',
        hintText: 'Enter your last name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurfixIcon(svgIcon: 'assets/icons/User.svg'),
      ),
    );
  }
  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          setState(() {});
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Phone number',
        hintText: 'Enter your first name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurfixIcon(svgIcon: 'assets/icons/Phone.svg'),
      ),
    );
  }
  TextFormField buildAddressFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          setState(() {});
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'First Name',
        hintText: 'Enter your first name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurfixIcon(svgIcon: 'assets/icons/Location point.svg'),
      ),
    );
  }
}
