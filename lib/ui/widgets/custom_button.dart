import 'package:flutter/material.dart';
import 'package:travelapp/shared/theme.dart';

class CustomButton extends StatelessWidget {

  final double width;
  final String message;
  final Function onTap;
  final EdgeInsets margin;

  const CustomButton({
    Key? key,
    required this.width,
    required this.message,
    required this.onTap,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: margin,
        height: 55,
        width: width,
        decoration: BoxDecoration(
          color: purpleColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Center(
          child: Text(
            message,
            style: whiteMediumTextStyle,
          )
        ),
      ),
    );
  }
}