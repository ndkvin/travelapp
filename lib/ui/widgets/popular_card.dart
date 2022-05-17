import "package:flutter/material.dart";
import 'package:travelapp/shared/theme.dart';
import 'package:travelapp/ui/pages/detail_page.dart';

class popularCard extends StatelessWidget {
  const popularCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => const DetailPage())
        );
      },
      child: Container(
        margin: const EdgeInsets.only(
          right: 24,
        ),
        padding: const EdgeInsets.all(
          10,
        ),
        height: 323,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: whiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius+3),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/ciliiwung.png',
                  ),
                  fit: BoxFit.cover,
                )
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 54.5,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(defaultRadius),
                    ),
                    color: whiteColor
                  ),
                  child: Center(
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
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 10
              ),
              child: Text(
                "Ciliiwung",
                style: whiteMediumTextStyle.copyWith(
                  color: blackColor
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10
              ),
              child: Text(
                "Tangerang",
                style: whiteLightTextStyle.copyWith(
                  color: greyColor,
                  fontSize: 14
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}