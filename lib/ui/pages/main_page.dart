import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/cubit/page_cubit.dart';
import 'package:travelapp/shared/theme.dart';
import 'package:travelapp/ui/pages/home_page.dart';
import 'package:travelapp/ui/pages/setting_page.dart';
import 'package:travelapp/ui/pages/transaction_page.dart';
import 'package:travelapp/ui/pages/wallet_apge.dart';
import 'package:travelapp/ui/widgets/button_buttom_navbar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget top(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return Walletpage();
        case 3:
          return SettingPage();
        default:
          return HomePage();
      }
    }

    Widget buttomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 60,
          width: double.infinity,
          margin: EdgeInsets.only(
            bottom: 30,
            right: defaultMargin,
            left: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(defaultRadius + 1),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonButtomNavbar(
                  index: 0,
                  icon: 'assets/icons/homegrey.png',
                ),
                ButtonButtomNavbar(
                  index: 1,
                  icon: 'assets/icons/bookmark.png',
                ),
                ButtonButtomNavbar(
                  index: 2,
                  icon: 'assets/icons/payment.png',
                ),
                ButtonButtomNavbar(
                  index: 3,
                  icon: 'assets/icons/setting.png',
                ),
              ]),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
            body: Stack(
          children: [
            top(currentIndex),
            buttomNavigation(),
          ],
        ));
      },
    );
  }
}
