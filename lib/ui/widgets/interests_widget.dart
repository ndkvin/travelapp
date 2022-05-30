import "package:flutter/material.dart";
import 'package:travelapp/shared/theme.dart';

class Interests extends StatelessWidget {

  String text;

  Interests({
    Key? key,
    required this.text,  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Image.asset(
            'assets/icons/check.png',
            width: 16,
            height: 16,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: blackregulerTextStyle.copyWith(
              fontSize: 14,
            ),
          )
        ]
      ),
    );
  }
}