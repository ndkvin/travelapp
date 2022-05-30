import 'dart:ui';

import "package:flutter/material.dart";
import 'package:travelapp/shared/theme.dart';
import 'package:travelapp/ui/widgets/custom_button.dart';
import 'package:travelapp/ui/widgets/interests_widget.dart';
import 'package:travelapp/ui/widgets/photo_detail_widget.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget backgroundImage() {
      return Container(
        height: 450,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/ciliiwung.png'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        margin: const EdgeInsets.only(
          top: 236
        ),
        height: 214,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              whiteColor.withOpacity(0),
              blackColor.withOpacity(0.95)
            ],
          ),
        ),
      );
    }

    Widget content() {
      return SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            top: 30,
          ),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 24,
                width: 108,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/emblem.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 250,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lake Ciliwung",
                          style: blackSemiBoldTextStyle.copyWith(
                            fontSize: 24,
                            color: whiteColor
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Tangerang",
                          style: whiteLightTextStyle
                        ),
                      ],
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.star_rate_rounded,
                            color: yellowColor,
                            size: 24,
                          ),
                          Text(
                            "4.8",
                            style: whiteMediumTextStyle.copyWith(
                              fontSize: 14
                            ),
                          )
                        ],
                      )
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: 24
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Detail",
                      style: blackSemiBoldTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Berada di jalur jalan provinsi yang menghubungkan Denpasar. Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.",
                      style: blackregulerTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Photos",
                      style: blackSemiBoldTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: List.generate(3, (index) {
                        return PhotoDetailWidget(
                          image: 'assets/images/ciliiwung.png',
                        );
                      }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Interests",
                      style: blackSemiBoldTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Interests(
                          text: "Kids Park",
                        ),
                        Interests(
                          text: "Honor Bridge",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Interests(
                          text: "Kids Park",
                        ),
                        Interests(
                          text: "Honor Bridge",
                        ),
                      ],
                    )
                  ],
                ),
                
              ),
              Container(
                height: 55,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 30
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "IDR 2.500.000",
                            style: whiteMediumTextStyle.copyWith(
                              fontSize: 18,
                              color: blackColor
                            ),
                          ),
                          Text(
                            "per orang",
                            style: whiteLightTextStyle.copyWith(
                              fontSize: 14,
                              color: greyColor
                            ),
                          )
                        ],
                      ),
                    ),
                    CustomButton(
                      width: 170,
                      message: "Book Now",
                      onTap: () {
                        Navigator.pushNamed(context, '/book');
                      }
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }



    return Scaffold(
      body: Stack(
        children: [
          backgroundImage(),
          customShadow(),
          content(),
        ],
      )
    );
  }
}