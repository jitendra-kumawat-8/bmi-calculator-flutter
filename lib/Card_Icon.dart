import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
class CardIcon extends StatelessWidget {
  CardIcon({this.icon1, this.iconText});

  final IconData icon1;
  final String iconText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon1,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}