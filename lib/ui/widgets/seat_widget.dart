import "package:flutter/material.dart";
import 'package:travelapp/shared/theme.dart';

class SeatWidget extends StatelessWidget {
  final int status;

  SeatWidget({
    Key? key,
    required this.status
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color bgColor() {
      switch(status) {
        case 0:
          return greyPurple;
        case 1:
          return purpleColor;
        case 2:
          return greyColor;
        default:
          return greyColor;
      }
    }

    Color borderColor() {
      switch(status) {
        case 0:
          return purpleColor;
        case 1:
          return purpleColor;
        case 2:
          return greyColor;
        default:
          return greyColor;
      }
    }

    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: bgColor(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: borderColor(),
          width: 2,
        ),
      ),
      child: Center(
        child: Text(
          status == 1 ? "YOU" : "", 
          style: blackSemiBoldTextStyle.copyWith(
            color: whiteColor,
            fontSize: 14,
          )
        ),
      ),
    );
  }
}