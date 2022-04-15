import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:the_design_system/the_design_system.dart';
import 'package:the_design_system/src/shared/app_colors.dart';
import 'package:the_design_system/src/widgets/the_space.dart';
import 'package:the_design_system/src/widgets/the_text.dart';

class TheOperationInfo extends StatelessWidget {
  const TheOperationInfo({
    required this.name,
    required this.avatar,
    required this.moneyQuantity,
    Key? key,
  }) : super(key: key);

  final String avatar;
  final String name;
  final double moneyQuantity;

  @override
  Widget build(BuildContext context) {
    var userName = this.name.split(' ')[0];

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: whiteColor,
          ),
          child: Container(
            margin: EdgeInsets.all(18),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 45,
                        backgroundColor: grey,
                        backgroundImage: this.avatar != ''
                            ? CachedNetworkImageProvider("${this.avatar}")
                            : CachedNetworkImageProvider(
                                "https://cdn-icons-png.flaticon.com/512/147/147144.png"),
                      ),
                    ),
                    TheHorizontalSpace(
                      space: (MediaQuery.of(context).size.width * 0.01),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: TheText.h3Medium(
                                userName,
                                color: Colors.black
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.black,
                              size: 18,
                            ),
                            TheHorizontalSpace(
                              space: (MediaQuery.of(context).size.width * 0.20),
                            ),
                            Icon(
                              Icons.monetization_on_outlined,
                              color: Colors.black,
                              size: 18,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            TheText.h3Regular(
                              this.moneyQuantity.toStringAsPrecision(2),
                              color: Colors.black,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
