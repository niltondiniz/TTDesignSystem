import 'package:the_design_system/src/shared/app_colors.dart';
import 'package:the_design_system/src/shared/styles/text_styles_medium.dart';
import 'package:the_design_system/src/shared/styles/text_styles_regular.dart';
import 'package:flutter/material.dart';
import 'package:the_design_system/src/shared/styles/text_styles_semi_bold.dart';

class TheText extends StatelessWidget {
  const TheText(
      {Key? key,
      required this.text,
      required this.style,
      this.color,
      this.alignment})
      : super(key: key);

  final String text;
  final TextStyle style;
  final Color? color;
  final TextAlign? alignment;

  const TheText.h1Regular(this.text, {this.color, this.alignment})
      : style = h1RegularStyle;
  const TheText.h2Regular(this.text, {this.color, this.alignment})
      : style = h2RegularStyle;
  const TheText.h3Regular(this.text, {this.color, this.alignment})
      : style = h3RegularStyle;
  const TheText.h4Regular(this.text, {this.color, this.alignment})
      : style = h4RegularStyle;
  const TheText.h5Regular(this.text, {this.color, this.alignment})
      : style = h5RegularStyle;
  const TheText.h6Regular(this.text, {this.color, this.alignment})
      : style = h6RegularStyle;

  const TheText.h1Medium(this.text, {this.color, this.alignment})
      : style = h1MediumStyle;
  const TheText.h2Medium(this.text, {this.color, this.alignment})
      : style = h2MediumStyle;
  const TheText.h3Medium(this.text, {this.color, this.alignment})
      : style = h3MediumStyle;
  const TheText.h4Medium(this.text, {this.color, this.alignment})
      : style = h4MediumStyle;
  const TheText.h5Medium(this.text, {this.color, this.alignment})
      : style = h5MediumStyle;
  const TheText.h6Medium(this.text, {this.color, this.alignment})
      : style = h6MediumStyle;

  const TheText.h1SemiBold(this.text, {this.color, this.alignment})
      : style = h1SemiBoldStyle;
  const TheText.h2SemiBold(this.text, {this.color, this.alignment})
      : style = h2SemiBoldStyle;
  const TheText.h3SemiBold(this.text, {this.color, this.alignment})
      : style = h3SemiBoldStyle;
  const TheText.h4SemiBold(this.text, {this.color, this.alignment})
      : style = h4SemiBoldStyle;
  const TheText.h5SemiBold(this.text, {this.color, this.alignment})
      : style = h5SemiBoldStyle;
  const TheText.h6SemiBold(this.text, {this.color, this.alignment})
      : style = h6SemiBoldStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: this.alignment != null ? this.alignment : TextAlign.start,
      style: TextStyle(
        fontFamily: this.style.fontFamily,
        fontSize: this.style.fontSize,
        fontWeight: this.style.fontWeight,
        fontStyle: this.style.fontStyle,
        color: this.color != null ? this.color : blackColor,
      ),
    );
  }
}
