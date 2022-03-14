import 'dart:math';
import 'package:example/widgets_list/input.dart';
import 'package:example/widgets_list/text.dart';
import 'package:example/widgets_list/buttons.dart';

import 'package:flutter/material.dart';
import 'package:the_design_system/the_design_system.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: whiteColor,
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 30,
          ),
          children: [
            TheText.h1SemiBold('Inputs'),
            TheVerticalSpace.space40(),
            theForms(_formKey),
            TheVerticalSpace.space40(),
            TheText.h1SemiBold('Botões'),
            TheVerticalSpace.space40(),
            ...buttons,
            TheVerticalSpace.space40(),
            TheText.h1SemiBold('Elementos de Texto'),
            TheVerticalSpace.space40(),
            ...texts,
            TheVerticalSpace.space40(),
          ],
        ),
      ),
    );
  }
}
