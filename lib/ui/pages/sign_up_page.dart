import 'package:flutter/material.dart';
import 'package:travelapp/shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  Widget title() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
      ),
      child: Text(
        'Join us and get\nyour next journey',
        style: blackSemiBoldTextStyle.copyWith(
          fontSize: 24
        ),
      ),
    );
  }

  Widget input(BuildContext context) {

    Widget nameInput() {
      return Container(
        margin: const EdgeInsets.only(
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: blackregulerTextStyle,
            ),
            const SizedBox(
              height: 6,
            ),
            TextFormField(
              cursorColor: blackColor,
              decoration: InputDecoration(
                hintText: 'Enter your full name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(
                    color: purpleColor
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: const EdgeInsets.only(
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: blackregulerTextStyle,
            ),
            const SizedBox(
              height: 6,
            ),
            TextFormField(
              obscureText: true,
              cursorColor: blackColor,
              decoration: InputDecoration(
                hintText: 'Input password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(
                    color: purpleColor
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget hobbyInput() {
      return Container(
        margin: const EdgeInsets.only(
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hobby',
              style: blackregulerTextStyle,
            ),
            const SizedBox(
              height: 6,
            ),
            TextFormField(
              cursorColor: blackColor,
              decoration: InputDecoration(
                hintText: 'Input your hobby',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(
                    color: purpleColor
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: blackregulerTextStyle,
            ),
            const SizedBox(
              height: 6,
            ),
            TextFormField(
              cursorColor: blackColor,
              decoration: InputDecoration(
                hintText: 'example@gmail.com',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(
                    color: purpleColor
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget submitButton(BuildContext context) {
      return InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/bonus');
        },
        child: Container(
          margin: const EdgeInsets.only(
            top: 20,
          ),
          height: 55,
          width: double.maxFinite,
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

    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(defaultRadius)
      ),
      child: Column(  
        children: [
          nameInput(),
          emailInput(),
          passwordInput(),
          hobbyInput(),
          submitButton(context),
        ]
      ),
    );
  }
  
  Widget tncText() {
    return InkWell(
      onTap: () {

      },
      child: Container(
        margin: const EdgeInsets.only(
          top: 50,
          bottom: 30
        ),
        child: Text(
          'Terms and Conditions',
          textAlign: TextAlign.center,
          style: whiteLightTextStyle.copyWith(
            color: greyColor,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFE5E5E5),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            input(context),
            tncText(),
          ]
        ),
      ),
    );
  }
}