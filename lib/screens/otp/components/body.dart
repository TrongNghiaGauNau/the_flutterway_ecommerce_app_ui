import 'package:flutter/material.dart';
import 'package:the_flutterway_ecommerce_app_ui/components/default_button.dart';
import 'package:the_flutterway_ecommerce_app_ui/constant.dart';
import 'package:the_flutterway_ecommerce_app_ui/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight! * 0.05,
              ),
              Text(
                'OTP Verification',
                style: headingStyle,
              ),
              const Text('We sent your code to +(89) 921 104 ***'),
              builderTime(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.15,
              ),
              const OtpForm(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.1,
              ),
              DefaultButton(
                text: 'Continue',
                press: () {},
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.1,
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Resend OTP Code',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row builderTime() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('This code will expired in '),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: const Duration(seconds: 30),
          builder: (context, value, child) => Text(
            '00:${value.toInt()}',
            style: const TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}

class OtpForm extends StatefulWidget {
  const OtpForm({super.key});

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
  }

  void nextField(String value,FocusNode focusNode){
    if(value.length ==1){
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: getProportionateWidth(60),
            child: TextFormField(
              autofocus: true,
              obscureText: true,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24),
              decoration: otpInputDecoration,
              onChanged: (value){
                nextField(value, pin2FocusNode);
              },
            ),
          ),
          SizedBox(
            width: getProportionateWidth(60),
            child: TextFormField(
              focusNode: pin2FocusNode,
              obscureText: true,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24),
              decoration: otpInputDecoration,
              onChanged: (value){
                nextField(value, pin3FocusNode);
              },
            ),
          ),
          SizedBox(
            width: getProportionateWidth(60),
            child: TextFormField(
              focusNode: pin3FocusNode,
              obscureText: true,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24),
              decoration: otpInputDecoration,
              onChanged: (value){
                nextField(value, pin4FocusNode);
              },
            ),
          ),
          SizedBox(
            width: getProportionateWidth(60),
            child: TextFormField(
              focusNode: pin4FocusNode,
              obscureText: true,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24),
              decoration: otpInputDecoration,
              onChanged: (value){
                pin4FocusNode.unfocus();
              },
            ),
          ),
        ],
      ),
    );
  }
}
