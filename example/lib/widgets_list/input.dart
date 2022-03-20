import 'package:flutter/material.dart';
import 'package:the_design_system/the_design_system.dart';

final TextEditingController? controller1 = TextEditingController();
final TextEditingController? controller2 = TextEditingController();
final TextEditingController? controller3 = TextEditingController();
final TextEditingController? controller4 = TextEditingController();
final TextEditingController? controller5 = TextEditingController();

Widget theForms(GlobalKey<FormState> _form) {
  return Form(
    key: _form,
    child: Column(
      children: [
        TheInput.phoneInput('(99) 99999-9999', controller1!),
        TheVerticalSpace.space16(),
        TheInput.emailInput('E-mail', controller2!),
        TheVerticalSpace.space16(),
        TheInput.passwordInput('Senha', controller3!, true),
        TheVerticalSpace.space16(),
        TheInput.numberInput('1234567890', controller4!),
        TheVerticalSpace.space16(),  
        TheInput.nameInput('First Name', controller5!),
        TheVerticalSpace.space16(),  
        TheButton.login(() {
          var form = _form.currentState;
          form!.validate();
        })
      ],
    ),
  );
}
