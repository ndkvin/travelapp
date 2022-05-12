import 'package:flutter/material.dart';
import 'package:travelapp/shared/theme.dart';
import 'package:travelapp/ui/widgets/custom_button.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/airplane.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Fly Like a Bird',
              style: whiteBoldTextStyle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Explore new world with us and let\nyourself get an amazing experiences',
              style: whiteLightTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
              width: 220,
              message: 'Get Started',
              onTap: () {
                Navigator.pushNamed(context, '/sign-up');
              },
            ),
            const SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}