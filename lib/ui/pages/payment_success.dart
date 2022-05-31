import "package:flutter/material.dart";
import 'package:travelapp/shared/theme.dart';
import 'package:travelapp/ui/widgets/custom_button.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/scheduling.png",
              width: 299.96,
              height: 150,
            ),
          ),
          const SizedBox(
            height: 40
          ),
          Text(
            "Well Booked 😍",
            style: blackSemiBoldTextStyle.copyWith(
              fontSize: 32,
            ),
          ),
          const SizedBox(
            height: 20
          ),
          Text(
            "Are you ready to explore the new\nworld of experiences?",
            style: whiteLightTextStyle.copyWith(
              fontSize: 16,
              color: greyColor,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            width: 220, 
            message: "My Bookings", 
            onTap: () {

            }
          )
        ],
      )
    );
  }
}