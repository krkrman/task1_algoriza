import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task1_algoriza/models/onboard_data.dart';
import 'package:task1_algoriza/presentation/widgets/app_widgets/onboard_content.dart';
import 'package:task1_algoriza/presentation/widgets/common/custom_button.dart';
import 'package:task1_algoriza/presentation/widgets/common/custom_text.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);
  final _controller = PageController();
  List<OnboardData> onboardData = [
    OnboardData(
        image: "images/delivery.svg",
        title: "Get food delivery to your doorstep asap",
        description:
            "We have young and professional delivery team that will bring your food as soon as possible to your doorstep"),
    OnboardData(
        image: "images/food.svg",
        title: "Buy Any Food from your favourite restaurant",
        description:
            "We are constantly adding your favourite restaurant throughout the territory and around your area carefully selected")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Align(
                  alignment: Alignment.centerRight,
                  child: CustomButton(
                    text: 'Skip',
                    color: Color(0xFFFAF2E7),
                    textColor: Colors.black,
                    fontSize: 18,
                    width: 80,
                    height: 50,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Image.asset(
                  "images/Delivery-Logo-2021.jpg",
                  width: 200,
                ),
                const SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: PageView.builder(
                    controller: _controller,
                    physics: const BouncingScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) => OnboardContent(
                      image: onboardData[index].image,
                      title: onboardData[index].title,
                      description: onboardData[index].description,
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 2,
                  effect: const ColorTransitionEffect(
                      dotWidth: 20,
                      dotHeight: 8,
                      activeDotColor: Color(0xffE6BD82),
                      dotColor: Color(0xffE8E8E8)),
                ),
                const SizedBox(
                  height: 18,
                ),
                const CustomButton(
                  text: 'Get Started',
                  color: Color(0xFF51AFAB),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CustomText(
                      text: 'Don\'t have an account? ',
                      alignment: Alignment.center,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomText(
                      text: 'Sign up',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff87B5B1),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
