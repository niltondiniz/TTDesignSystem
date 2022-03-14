import 'package:flutter/material.dart';

import 'package:the_design_system/the_design_system.dart';

class TheMenuItem {
  IconData? icon;
  String? text = '';
  VoidCallback? callback = () {};
  bool? enableArrow = false;

  TheMenuItem(
      {required this.icon,
      required this.text,
      required this.enableArrow,
      required this.callback});
}

class TheCustomMenu extends StatelessWidget {
  final List<TheMenuItem> lstItens;

  const TheCustomMenu({
    required this.lstItens,
    Key? key,
    //required this.avatar,
  }) : super(key: key);

  List<Widget> constructMenu() {
    List<Widget> retorno = [];
    lstItens.forEach((element) {
      retorno.add(
        Material(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
            bottomLeft: Radius.circular(18),
            bottomRight: Radius.circular(18),
          ),
          child: InkWell(
            onTap: () {
              element.callback!();
            },
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                  child: SizedBox(
                    height: 48,
                    width: 25,
                    child: Icon(element.icon, size: 30),
                  ),
                ),
                TheText.h5Medium(
                  element.text.toString(),
                  color: grey,
                ),
                TheHorizontalSpace(space: 10),
                Expanded(flex: 1, child: Center()),
                (element.enableArrow == true)
                    ? Container(
                        margin: EdgeInsets.only(right: 14),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: grey,
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      );
    });
    return retorno;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18)),
            color: whiteColor,
          ),
          child: Column(
            children: constructMenu(),
          ),
        ),
      ],
    );
  }
}
