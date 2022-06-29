// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double fontSize, height, width, radius, elevation;
  final Color? color;
  final Color textColor;
  final VoidCallback? onPressed;
  final bool isUpperCase;
  final FontWeight fontWeight;

  const CustomButton({
    required this.text,
    this.fontSize = 18,
    this.height = 55,
    this.width = double.infinity,
    this.radius = 15,
    this.elevation = 0,
    this.color = Colors.teal,
    this.textColor = Colors.white,
    this.onPressed,
    this.isUpperCase = true,
    this.fontWeight = FontWeight.bold
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: MaterialButton(
        onPressed: onPressed ?? () {},
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(radius))),
        elevation: elevation,
        minWidth: width,
        color: color ?? Theme.of(context).primaryColor,
        height: height,
        child: Center(
          child: CustomText(
            text: text,
            fontSize: fontSize,
            alignment: Alignment.center,
            fontWeight: fontWeight,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
