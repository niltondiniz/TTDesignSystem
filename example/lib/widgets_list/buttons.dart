import 'package:flutter/material.dart';
import 'package:the_design_system/the_design_system.dart';

List<Widget> get buttons => [
     
      TheVerticalSpace(space: 16),
      TheButton.signUpDark(() {
        print('clicou em  Cadastrar Dark');
      }),
      TheVerticalSpace(space: 16),

      TheButton.enterDark(() {
        print('clicou em enter dark');
      }),
      TheVerticalSpace(space: 16),
    ];
