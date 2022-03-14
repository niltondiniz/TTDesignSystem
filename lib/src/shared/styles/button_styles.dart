import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_design_system/src/shared/app_colors.dart';

const double radiusSize = 8;

ButtonStyle mainBlueColor() {
  return ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      backgroundColor: MaterialStateProperty.all(blueColor),
      foregroundColor: MaterialStateProperty.all(whiteColor),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusSize))),
      textStyle: MaterialStateProperty.all(TextStyle(
        fontFamily: 'Inter',
        fontStyle: FontStyle.normal,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      )));
}