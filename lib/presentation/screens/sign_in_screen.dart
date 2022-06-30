import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:task1_algoriza/presentation/screens/register_screen.dart';
import 'package:task1_algoriza/presentation/widgets/common/custom_button.dart';
import 'package:task1_algoriza/presentation/widgets/common/custom_social_button.dart';
import 'package:task1_algoriza/presentation/widgets/common/custom_text.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Image.asset(
                'images/sing_in_background.png',
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CustomText(
                      text: 'Welcome to Fashion Daily',
                      fontSize: 15,
                      alignment: Alignment.centerLeft,
                      color: const Color(0xff91929B),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: 'Sign In',
                          alignment: Alignment.centerLeft,
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                        ),
                        const Spacer(),
                        CustomText(
                          text: 'Help',
                          color: const Color(0xff3586FD),
                          fontSize: 15,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        const Icon(
                          FontAwesomeIcons.solidCircleQuestion,
                          color: Color(0xff3586FD),
                          size: 15,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomText(
                      text: 'Phone Number',
                      color: const Color(0xff9D9DA8),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    IntlPhoneField(
                      decoration: const InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialCountryCode: 'EG',
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const CustomButton(
                      text: 'Sign In',
                      color: Color(0xff3586FF),
                      radius: 2,
                      fontWeight: FontWeight.w400,
                      height: 45,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.grey,
                            height: 1,
                          ),
                        ),
                        CustomText(
                          text: 'OR',
                          color: Colors.grey,
                          fontSize: 10,
                          padding: 15,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.grey,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                    const CustomSocialButton(
                      text: 'Sign in with Google',
                      fontSize: 15,
                      iconSize: 15,
                      iconData: FontAwesomeIcons.google,
                      color: Colors.lightBlue,
                      textColor: Colors.lightBlue,
                      radius: 2,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: 'Doesn\'t have an account? ',
                          color: const Color(0xff9D9DA8),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomText(
                          text: 'Register here',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const RegisterScreen()),
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    CustomText(
                      text:
                          'Use the application according to policy rules. Any kinds of violation will be subject to sanctions ',
                      color: const Color(0xff9D9DA8),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
