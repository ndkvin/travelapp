import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/cubit/auth_cubit.dart';
import 'package:travelapp/shared/theme.dart';
import 'package:travelapp/ui/widgets/custom_button.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget BonusCard() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          String name = "USER";
          if(state is AuthSuccess) {
            name = state.user.name;
          }

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
                ]),
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
                              style: whiteLightTextStyle.copyWith(fontSize: 14),
                            ),
                            Text(
                              name,
                              style:
                                  whiteMediumTextStyle.copyWith(fontSize: 20),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(children: [
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
                            style: whiteMediumTextStyle.copyWith(fontSize: 16),
                          )
                        ]),
                      )
                    ],
                  ),
                  Wrap(
                    direction: Axis.vertical,
                    children: [
                      Text(
                        'Balance',
                        style: whiteLightTextStyle.copyWith(fontSize: 14),
                      ),
                      Text('IDR 280.000.000',
                          style: whiteMediumTextStyle.copyWith(fontSize: 26)),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      );
    }

    Widget TextCard() {
      return Container(
          child: Column(children: [
        Text(
          'Big Bonus 🎉',
          style: blackSemiBoldTextStyle.copyWith(fontSize: 38),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'We give you early credit so that\nyou can buy a flight ticket',
          style: whiteLightTextStyle.copyWith(
            color: greyColor,
          ),
          textAlign: TextAlign.center,
        )
      ]));
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
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
              CustomButton(
                  width: 220,
                  message: 'Get Started',
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/main', (route) => false);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
