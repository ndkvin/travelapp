import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:travelapp/cubit/seat_cubit.dart';
import 'package:travelapp/models/destination_model.dart';
import 'package:travelapp/models/transaction_model.dart';
import 'package:travelapp/shared/theme.dart';
import 'package:travelapp/ui/pages/payment_page.dart';
import 'package:travelapp/ui/widgets/custom_button.dart';
import 'package:travelapp/ui/widgets/seat_widget.dart';

class BookPage extends StatelessWidget {
  final DestinationModel destionation;

  const BookPage({
    Key? key,
    required this.destionation,
  }) : super(key: key);

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
                        )))),
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
                        )))),
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
                        )))),
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
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.only(top: 30, bottom: 30),
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
                Row(children: [
                  Expanded(
                      child: Center(
                    child: Text(
                      "A",
                      style: blackregulerTextStyle.copyWith(
                        fontSize: 16,
                        color: greyColor,
                      ),
                    ),
                  )),
                  Expanded(
                      child: Center(
                    child: Text(
                      "B",
                      style: blackregulerTextStyle.copyWith(
                        fontSize: 16,
                        color: greyColor,
                      ),
                    ),
                  )),
                  Expanded(
                      child: Center(
                    child: Text(
                      "",
                      style: blackregulerTextStyle.copyWith(
                        fontSize: 16,
                        color: greyColor,
                      ),
                    ),
                  )),
                  Expanded(
                      child: Center(
                    child: Text(
                      "C",
                      style: blackregulerTextStyle.copyWith(
                        fontSize: 16,
                        color: greyColor,
                      ),
                    ),
                  )),
                  Expanded(
                      child: Center(
                    child: Text(
                      "D",
                      style: blackregulerTextStyle.copyWith(
                        fontSize: 16,
                        color: greyColor,
                      ),
                    ),
                  )),
                ]),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatWidget(id: "A1"),
                    SeatWidget(id: "B1"),
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
                    SeatWidget(id: "C1"),
                    SeatWidget(id: "D1"),
                  ]
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatWidget(id: "A2"),
                    SeatWidget(id: "B2"),
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
                    SeatWidget(id: "C2"),
                    SeatWidget(id: "D2"),
                  ]
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatWidget(id: "A3"),
                    SeatWidget(id: "B3"),
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
                    SeatWidget(id: "C3"),
                    SeatWidget(id: "D3"),
                  ]
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatWidget(id: "A4", isAvailable: false),
                    SeatWidget(id: "B4"),
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
                    SeatWidget(id: "C4"),
                    SeatWidget(id: "D4"),
                  ]
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatWidget(id: "A5"),
                    SeatWidget(id: "B5"),
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
                    SeatWidget(id: "C5"),
                    SeatWidget(id: "D5"),
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
                      state.join(", "),
                      style: whiteMediumTextStyle.copyWith(
                          fontSize: 16, color: blackColor),
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
                      NumberFormat.currency(
                        locale: 'id',
                        symbol: 'IDR ',
                      )
                      .format(destionation.price*state.length),
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
        },
      );
    }

    Widget button() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return CustomButton(
              width: double.infinity,
              message: "Continue to Checkout",
              onTap: () {
                int price = state.length*destionation.price;
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => PaymentPage(
                    transaction: TrasactionModel(
                      destination: destionation,
                      traveler: state.length,
                      seat: state.join(", "),
                      insurence: true,
                      refundable: false,
                      price:price,
                      total: price+(price*0.45),
                    ),
                  ),
                )
              );
            },
          );
        },
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
              button()
            ],
          ),
        ),
      ),
    );
  }
}
