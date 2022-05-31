import "package:flutter/material.dart";
import 'package:travelapp/shared/theme.dart';
import 'package:travelapp/ui/widgets/custom_button.dart';
import 'package:travelapp/ui/widgets/seat_widget.dart';

class BookPage extends StatelessWidget {
  const BookPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Your\nFavorite Seat",
              style: blackSemiBoldTextStyle.copyWith(
                fontSize: 24,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 16,
                      width: 16,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/icons/available.png",
                          )
                        )
                      )
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Available",
                      style: blackregulerTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 16,
                      width: 16,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/icons/selected.png",
                          )
                        )
                      )
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Selected",
                      style: blackregulerTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 16,
                      width: 16,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/icons/unavailable.png",
                          )
                        )
                      )
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Unavailable",
                      style: blackregulerTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget seat() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          bottom: 30
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 30,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      "A",
                      style: blackregulerTextStyle.copyWith(
                        fontSize: 16,
                        color: greyColor,
                      ),
                    ),
                  )
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "B",
                      style: blackregulerTextStyle.copyWith(
                        fontSize: 16,
                        color: greyColor,
                      ),
                    ),
                  )
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "",
                      style: blackregulerTextStyle.copyWith(
                        fontSize: 16,
                        color: greyColor,
                      ),
                    ),
                  )
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "C",
                      style: blackregulerTextStyle.copyWith(
                        fontSize: 16,
                        color: greyColor,
                      ),
                    ),
                  )
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "D",
                      style: blackregulerTextStyle.copyWith(
                        fontSize: 16,
                        color: greyColor,
                      ),
                    ),
                  )
                ),
              ]
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatWidget(
                  status: 1,
                ),
                SeatWidget(
                  status: 2,
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      "1", 
                      style: blackregulerTextStyle.copyWith(
                        color: greyColor,
                        fontSize: 14,
                      )
                    ),
                  ),
                ),
                SeatWidget(
                  status: 1,
                ),
                SeatWidget(
                  status: 1,
                ),
              ]
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatWidget(
                  status: 1,
                ),
                SeatWidget(
                  status: 2,
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      "2", 
                      style: blackregulerTextStyle.copyWith(
                        color: greyColor,
                        fontSize: 14,
                      )
                    ),
                  ),
                ),
                SeatWidget(
                  status: 0,
                ),
                SeatWidget(
                  status: 1,
                ),
              ]
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatWidget(
                  status: 1,
                ),
                SeatWidget(
                  status: 0,
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      "3", 
                      style: blackregulerTextStyle.copyWith(
                        color: greyColor,
                        fontSize: 14,
                      )
                    ),
                  ),
                ),
                SeatWidget(
                  status: 0,
                ),
                SeatWidget(
                  status: 1,
                ),
              ]
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatWidget(
                  status: 1,
                ),
                SeatWidget(
                  status: 0,
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      "4", 
                      style: blackregulerTextStyle.copyWith(
                        color: greyColor,
                        fontSize: 14,
                      )
                    ),
                  ),
                ),
                SeatWidget(
                  status: 0,
                ),
                SeatWidget(
                  status: 0,
                ),
              ]
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatWidget(
                  status: 1,
                ),
                SeatWidget(
                  status: 0,
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                    child: Text(
                      "5", 
                      style: blackregulerTextStyle.copyWith(
                        color: greyColor,
                        fontSize: 14,
                      )
                    ),
                  ),
                ),
                SeatWidget(
                  status: 1,
                ),
                SeatWidget(
                  status: 1,
                ),
              ]
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Your Seat",
                  style: blackregulerTextStyle.copyWith(
                    fontSize: 14,
                    color: greyColor,
                  ),
                ),
                Text(
                  "A3, B3",
                  style: whiteMediumTextStyle.copyWith(
                    fontSize: 16,
                    color: blackColor
                  ),
                )
              ]
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: blackregulerTextStyle.copyWith(
                    fontSize: 14,
                    color: greyColor,
                  ),
                ),
                Text(
                  "IDR 540.000.000",
                  style: blackSemiBoldTextStyle.copyWith(
                    color: purpleColor,
                    fontSize: 16,
                  )
                )
              ]
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 40,
          ),
          child: Column(
            children: [
              header(),
              seat(),
              CustomButton(
                width: double.infinity, 
                message: "Continue to Checkout", 
                onTap: () {
                  Navigator.pushNamed(context, "/payment");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}