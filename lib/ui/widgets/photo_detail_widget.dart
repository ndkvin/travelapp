import "package:flutter/material.dart";
import 'package:travelapp/shared/theme.dart';

class PhotoDetailWidget extends StatelessWidget {
  const PhotoDetailWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 10
      ),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        image: const DecorationImage(
          image: AssetImage('assets/images/ciliiwung.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}