import 'package:flutter/material.dart';
import 'package:travelapp/shared/theme.dart';

class ButtonButtomNavbar extends StatelessWidget {

  final bool isSelected;
  final String icon;

  const ButtonButtomNavbar({
    Key? key,
    this.isSelected = false,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(icon),
            )
          ),
        ),
        Container(
          height: 2,
          width: 30,
          decoration: BoxDecoration(
            color: isSelected ? purpleColor : whiteColor,
            borderRadius: BorderRadius.circular(18)
          ),
        )
      ],
    );
  }
}