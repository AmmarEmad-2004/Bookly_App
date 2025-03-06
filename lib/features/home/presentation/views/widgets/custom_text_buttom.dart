import 'package:bookly_app/core/utils/styles_app.dart';
import 'package:flutter/material.dart';

class CustomTextButtom extends StatelessWidget {
  const CustomTextButtom(
      {super.key,
      this.backgroundColor,
      required this.text,
      this.borderRadius,
      this.textColor});

  final Color? backgroundColor;
  final String text;
  final BorderRadiusGeometry? borderRadius;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle18
              .copyWith(fontWeight: FontWeight.w900, color: textColor),
        ),
      ),
    );
  }
}