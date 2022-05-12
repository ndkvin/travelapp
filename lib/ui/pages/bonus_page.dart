import 'package:flutter/material.dart';
import 'package:travelapp/shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Widget BonusCard() { 
      return Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: purpleColor,
          borderRadius: BorderRadius.circular(defaultRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 50,
              offset: const Offset(0, 10),
            )
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: whiteLightTextStyle.copyWith(
                            fontSize: 14
                          ),
                        ),
                        Text(
                          'Kezia Anne',
                          style: whiteMediumTextStyle.copyWith(
                            fontSize: 20
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          height: 24,
                          width: 24,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Pay',
                          style: whiteMediumTextStyle.copyWith(
                            fontSize: 16
                          ),
                        )
                      ]
                    ),
                  )
                ],
              ),
              Wrap(
                direction: Axis.vertical,
                children: [
                  Text(
                    'Balance',
                    style: whiteLightTextStyle.copyWith(
                      fontSize: 14
                    ),
                  ),
                  Text(
                    'IDR 280.000.000',
                    style: whiteMediumTextStyle.copyWith(
                      fontSize: 26
                    )
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget TextCard() {
      return Container(
        child: Column(
          children: [
            Text(
              'Big Bonus 🎉',
              style: blackSemiBoldTextStyle.copyWith(
                fontSize: 38
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'We give you early credit so that\nyou can buy a flight ticket',
              style: whiteLightTextStyle.copyWith(
                color: greyColor,
              ),
              textAlign: TextAlign.center,
            )
          ]
        )
      );
    }

    Widget StartButton() {
      return InkWell(
        onTap: () {
          
        },
        child: Container(
          height: 55,
          width: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultRadius),
            color: purpleColor,
          ),
          child: Center(
            child: Text(
              'Get Started',
              style: whiteMediumTextStyle,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BonusCard(),
              const SizedBox(
                height: 70,
              ),
              TextCard(),
              const SizedBox(
                height: 50,
              ),
              StartButton(),
            ],
          ),
        ),
      ),
    );
  }
}