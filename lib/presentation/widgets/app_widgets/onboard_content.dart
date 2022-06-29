import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task1_algoriza/presentation/widgets/common/custom_button.dart';
import 'package:task1_algoriza/presentation/widgets/common/custom_text.dart';

class OnboardContent extends StatelessWidget {
  final String image, title, description;

  const OnboardContent({Key? key, required this.image, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          image,
          height: 250,
          width: double.infinity,
        ),
        const SizedBox(
          height: 50,
        ),
        CustomText(
          alignment: Alignment.center,
          text: title,
          fontSize: 30,
          maxLines: 2,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomText(
          text: description,
          maxLines: 3,
          fontSize: 16,
          color: Colors.grey,
          alignment: Alignment.center,
        ),
      ],
    );
  }
}
