import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:task1_algoriza/presentation/screens/onboarding_screen.dart';
import 'package:task1_algoriza/presentation/screens/sign_in_screen.dart';
import 'package:task1_algoriza/presentation/widgets/common/bordered_form_field.dart';
import 'package:task1_algoriza/presentation/widgets/common/custom_button.dart';
import 'package:task1_algoriza/presentation/widgets/common/custom_social_button.dart';
import 'package:task1_algoriza/presentation/widgets/common/custom_text.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
      child: Column(children: [
        Stack(
          children: [
            Image.asset(
              "images/sing_in_background.png",
              fit: BoxFit.fill,
              width: double.infinity,
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OnboardingScreen()),
                  );
                },
                backgroundColor: Colors.black,
                child: const Icon(
                  Icons.arrow_back_ios_new_sharp,
                ),
              ),
            ),
          ],
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
                    text: 'Register',
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
                    color: const Color(0xff3586FD),
                    size: 15,
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              CustomText(
                text: 'Email',
                color: const Color(0xff9D9DA8),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 8,
              ),
              BorderedFormField(
                  controller: TextEditingController(),
                  textInputType: TextInputType.emailAddress,
                  validate: null,
                  hint: "EG. example@email.com",
                  prefixIcon: null, label: null,),
              const SizedBox(
                height: 8,
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
                  hintText: 'EG. 812345664',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                initialCountryCode: 'EG',
              ),
              CustomText(
                text: 'Password',
                color: const Color(0xff9D9DA8),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 8,
              ),
              BorderedFormField(
                controller: TextEditingController(),
                textInputType: TextInputType.text,
                validate: null,
                isPassword: true,
                label: "Password",
                suffixIcon:Icons.remove_red_eye,
                prefixIcon: null,
              ),
              const SizedBox(
                height: 8,
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
                    text: 'Or',
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
                    text: 'Has an account? ',
                    color: const Color(0xff9D9DA8),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  CustomText(
                    text: 'Sign In',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignInScreen()),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              CustomText(
                text: 'By registering your account,you are agree to our',
                color: const Color(0xff9D9DA8),
                fontSize: 15,
                alignment: Alignment.center,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 2,
              ),
              CustomText(
                text: 'Terms and Conditions',
                color: Colors.blue,
                fontSize: 15,
                alignment: Alignment.center,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ]),
    )));
  }
}
