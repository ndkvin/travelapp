import "package:flutter/material.dart";
import 'package:travelapp/models/destination_model.dart';
import 'package:travelapp/shared/theme.dart';
import 'package:travelapp/ui/pages/detail_page.dart';

class popularCard extends StatelessWidget {
  final DestinationModel destination;

  popularCard({
    Key? key,
    required this.destination,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(destination);
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (BuildContext context) { 
            return DetailPage(destination);
          }));
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
                image: DecorationImage(
                  image: NetworkImage(
                    destination.imageUrl,
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
                          destination.rating.toString(),
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
                destination.name,
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
                destination.city,
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