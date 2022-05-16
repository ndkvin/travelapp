import "package:flutter/material.dart";
import 'package:travelapp/shared/theme.dart';

class newThisYearCard extends StatelessWidget {
  const newThisYearCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 24,
      ),
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        color: whiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/danaubratan.png',
                        ),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Danau Bratan",
                        style: whiteMediumTextStyle.copyWith(
                          color: blackColor,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Singajara",
                        style: whiteLightTextStyle.copyWith(
                          color: greyColor,
                          fontSize: 14
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: yellowColor,
                    size: 24,
                  ),
                  Text(
                    "4.8",
                    style: whiteMediumTextStyle.copyWith(
                      fontSize: 14,
                      color: blackColor
                    ),
                  )
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}