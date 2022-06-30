import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final Color? color, backgroundColor;
  final double fontSize;
  final String text;
  final FontWeight fontWeight;
  final Alignment? alignment;
  final TextAlign textAlign;
  TextStyle? style;
  final int? maxLines;
  final double padding;
  final double? width, height;
  final Function? onPressed;

  /// put a line through the text as in discount
  final bool isLineThrough;

  CustomText({
    this.backgroundColor = Colors.transparent,
    this.color = Colors.black,
    this.alignment,
    this.fontSize = 20,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.maxLines = 3,
    this.padding = 0,
    this.isLineThrough = false,
    this.textAlign = TextAlign.center,
    this.width,
    this.height,
    this.style,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    style = GoogleFonts.lato(
        textStyle: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            decoration: isLineThrough ? TextDecoration.lineThrough : TextDecoration.none));
    return Directionality(
      textDirection:
          Localizations.localeOf(context) == const Locale('ar') ? TextDirection.rtl : TextDirection.ltr,
      child: InkWell(
        onTap: () {
          onPressed!();
        },
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
