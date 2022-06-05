import "package:flutter/material.dart";
import 'package:intl/intl.dart';
import 'package:travelapp/models/transaction_model.dart';
import 'package:travelapp/shared/theme.dart';
import 'package:travelapp/ui/widgets/custom_button.dart';

class PaymentPage extends StatelessWidget {
  final TrasactionModel transaction; 

  const PaymentPage({
    Key? key,
    required this.transaction
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget topImage() {
      return Container(
        margin: const EdgeInsets.only(
          bottom: 30
        ),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 65,
                width: 291,
                margin: const EdgeInsets.only(
                  top: 20,
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/checkout.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CGK",
                        style: blackSemiBoldTextStyle.copyWith(
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        "Jakarta",
                        style: whiteLightTextStyle.copyWith(
                          fontSize: 14,
                          color: greyColor,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "TLC",
                        style: blackSemiBoldTextStyle.copyWith(
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        transaction.destination.city,
                        style: whiteLightTextStyle.copyWith(
                          fontSize: 14,
                          color: greyColor,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget bookingDetails() {
      return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(defaultRadius+1),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(transaction.destination.imageUrl),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          transaction.destination.name,
                          style: whiteMediumTextStyle.copyWith(
                            fontSize: 18,
                            color: blackColor,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          transaction.destination.city,
                          style: whiteLightTextStyle.copyWith(
                            fontSize: 14,
                            color: greyColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: yellowColor,
                        size: 24,  
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        transaction.destination.rating.toString(),
                        style: whiteMediumTextStyle.copyWith(
                          fontSize: 14,
                          color: blackColor,
                        ),
                      )
                    ]
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Booking Details",
                style: blackSemiBoldTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/check.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "Traveler",
                      style: blackregulerTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Text(
                    "${transaction.traveler} person",
                    style: blackSemiBoldTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/check.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "Seat",
                      style: blackregulerTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Text(
                    "${transaction.seat}",
                    style: blackSemiBoldTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/check.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "Insurance",
                      style: blackregulerTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Text(
                    transaction.insurence ? "YES" : "NO",
                    style: blackSemiBoldTextStyle.copyWith(
                      fontSize: 14,
                      color: blueColor
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/check.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "Refundable",
                      style: blackregulerTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Text(
                    transaction.refundable ? "YES" : "NO",
                    style: blackSemiBoldTextStyle.copyWith(
                      fontSize: 14,
                      color: redColor
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/check.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "VAT",
                      style: blackregulerTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Text(
                    "45%",
                    style: blackSemiBoldTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/check.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "Price",
                      style: blackregulerTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Text(
                    NumberFormat.currency(
                        locale: 'id',
                        symbol: 'IDR ',
                      )
                      .format(transaction.price),
                    style: blackSemiBoldTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/check.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "Grand Total",
                      style: blackregulerTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Text(
                    NumberFormat.currency(
                        locale: 'id',
                        symbol: 'IDR ',
                      )
                      .format(transaction.total),
                    style: blackSemiBoldTextStyle.copyWith(
                      fontSize: 14,
                      color: purpleColor
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget paymentDertails() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          bottom: 30
        ),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Payment Details",
              style: blackSemiBoldTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 70,
                  width: 100,
                  decoration: BoxDecoration(
                    color: purpleColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.airplanemode_active,
                        color: whiteColor,
                        size: 24,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Pay",
                        style: whiteMediumTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      )
                    ]
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "IDR 80.400.000",
                      style: whiteMediumTextStyle.copyWith(
                        fontSize: 18,
                        color: blackColor
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Current Balance",
                      style: whiteLightTextStyle.copyWith(
                        fontSize: 14,
                        color: greyColor
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 40,
          ),
          child: Column(
            children: [
              topImage(),
              bookingDetails(),
              paymentDertails(),
              CustomButton(
                width: double.infinity, 
                message: "Pay Now", 
                onTap: () {
                  Navigator.pushNamed(
                    context, 
                    "/payment_success"
                  );
                }
              )
            ]
          )
        ),
      )
    );
  }
}