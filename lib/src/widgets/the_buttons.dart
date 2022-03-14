import 'package:the_design_system/src/shared/styles/button_styles.dart';
import 'package:flutter/material.dart';

class TheButton extends StatelessWidget {
  TheButton({Key? key}) : super(key: key);

  //inicializo as variaveis padroes dos botoes
  String text = '';
  double height = 50;
  ButtonStyle style = mainBlueColor();
  Color backgroundColor = Color(0xff000000);
  Color color = Color(0xffFFFFFF);
  var callback;

  TheButton.login(cb) {
    style = mainBlueColor();
    text = 'Logar';
    height = 50;
    callback = cb;
  }

  TheButton.signUpDark(cb) {
    style = mainBlueColor();
    text = 'Cadastrar';
    height = 50;
    callback = cb;
  }

  TheButton.enterDark(cb) {
    style = mainBlueColor();
    text = 'Entrar';
    height = 50;
    callback = cb;
  }


  TheButton.customized(
      this.text, this.callback, this.height, this.backgroundColor, this.color)
      : style = ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            foregroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radiusSize))),
            textStyle: MaterialStateProperty.all(TextStyle(
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            )));

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      child:
          ElevatedButton(onPressed: callback, child: Text(text), style: style),
    );
  }
}
