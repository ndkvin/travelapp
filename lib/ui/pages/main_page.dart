import 'package:flutter/material.dart';
import 'package:travelapp/shared/theme.dart';
import 'package:travelapp/ui/pages/home_page.dart';
import 'package:travelapp/ui/widgets/button_buttom_navbar.dart';

class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

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
            borderRadius: BorderRadius.circular(defaultRadius+1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              ButtonButtomNavbar(
                isSelected: true,
                icon: 'assets/icons/homegrey.png',
              ),
              ButtonButtomNavbar(
                icon: 'assets/icons/bookmark.png',
              ),
              ButtonButtomNavbar(
                icon: 'assets/icons/payment.png',
              ),
              ButtonButtomNavbar(
                icon: 'assets/icons/setting.png',
              ),
            ]
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          HomePage(),
          buttomNavigation(),
        ],
      )
    );
  }
}