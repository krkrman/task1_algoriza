import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final Color? color, backgroundColor;
  final double fontSize;
  final String text;
  final FontWeight fontWeight;
  final Alignment? alignment;
  final TextAlign textAlign;
  final TextStyle? style;
  final int? maxLines;
  final double padding;
  final double? width, height;

  /// put a line through the text as in discount
  final bool isLineThrough;

  const CustomText({
    this.backgroundColor = Colors.transparent,
    this.color = Colors.black,
    this.alignment,
    this.fontSize = 20,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.style,
    this.maxLines = 3,
    this.padding = 0,
    this.isLineThrough = false,
    this.textAlign = TextAlign.center,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:
          Localizations.localeOf(context) == const Locale('ar') ? TextDirection.rtl : TextDirection.ltr,
      child: Container(
        alignment: alignment ?? Alignment.centerLeft,
        color: backgroundColor,
        width: width,
        height: height,

        padding: EdgeInsets.all(padding),
        child: Text(
          text,
          maxLines: maxLines,
          overflow: TextOverflow.ellipsis,
          textAlign: textAlign,
          style: style ??
              TextStyle(
                  color: color,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  decoration: isLineThrough ? TextDecoration.lineThrough : TextDecoration.none),
        ),
      ),
    );
  }

  Alignment adaptiveTextAlignment(BuildContext context) {
    if (Localizations.localeOf(context) == const Locale('ar')) {
      return Alignment.centerRight;
    } else {
      return Alignment.centerRight;
    }
  }
}
