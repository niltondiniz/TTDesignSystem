import 'package:flutter/material.dart';

class TheVerticalSpace extends StatelessWidget {
  final double space;
  const TheVerticalSpace({Key? key, required this.space}) : super(key: key);

  static get theSpace => null;

  TheVerticalSpace.body() : space = theSpace;

  TheVerticalSpace.space4() : space = 4;
  TheVerticalSpace.space8() : space = 8;
  TheVerticalSpace.space13() : space = 13;
  TheVerticalSpace.space16() : space = 16;
  TheVerticalSpace.space32() : space = 32;
  TheVerticalSpace.space40() : space = 40;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: this.space,
    );
  }
}

class TheHorizontalSpace extends StatelessWidget {
  final double space;
  const TheHorizontalSpace({Key? key, required this.space}) : super(key: key);

  static get theSpace => null;

  TheHorizontalSpace.body() : space = theSpace;

  TheHorizontalSpace.space4() : space = 4;
  TheHorizontalSpace.space8() : space = 8;
  TheHorizontalSpace.space13() : space = 13;
  TheHorizontalSpace.space16() : space = 16;
  TheHorizontalSpace.space32() : space = 32;
  TheHorizontalSpace.space40() : space = 40;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: this.space,
    );
  }
}
