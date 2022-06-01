import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/cubit/auth_cubit.dart';
import 'package:travelapp/shared/theme.dart';
import 'package:travelapp/ui/widgets/custom_button.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final TextEditingController nameComntroller = TextEditingController(text: '');
  final TextEditingController emailComntroller = TextEditingController(text: '');
  final TextEditingController passwordComntroller = TextEditingController(text: '');
  final TextEditingController hobbyComntroller = TextEditingController(text: '');

  Widget title() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
      ),
      child: Text(
        'Join us and get\nyour next journey',
        style: blackSemiBoldTextStyle.copyWith(fontSize: 24),
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
              controller: nameComntroller,
              cursorColor: blackColor,
              decoration: InputDecoration(
                hintText: 'Enter your full name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(color: purpleColor),
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
              controller: passwordComntroller,
              obscureText: true,
              cursorColor: blackColor,
              decoration: InputDecoration(
                hintText: 'Input password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(color: purpleColor),
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
              controller: hobbyComntroller,
              cursorColor: blackColor,
              decoration: InputDecoration(
                hintText: 'Input your hobby',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(color: purpleColor),
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
              controller: emailComntroller,
              cursorColor: blackColor,
              decoration: InputDecoration(
                hintText: 'example@gmail.com',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(color: purpleColor),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(defaultRadius)),
      child: Column(children: [
        nameInput(),
        emailInput(),
        passwordInput(),
        hobbyInput(),
        BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if(state is AuthSuccess) {
              Navigator.pushNamedAndRemoveUntil(context, "/bonus", (route) => false);
            } else if (state is AuthFiled) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: redColor,
                  content: Text(state.message),
                ),
              );
            }
          },
          builder: (context, state) {
            if(state is AuthLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return CustomButton(
              width: double.infinity,
              message: 'Get Started',
              onTap: () {
                context.read<AuthCubit>().signUp(
                  email: emailComntroller.text, 
                  password: passwordComntroller.text, 
                  name: nameComntroller.text,
                  hobby: hobbyComntroller.text
                );
              },
              margin: const EdgeInsets.only(
                top: 30,
              ),
            );
          },
        )
      ]),
    );
  }

  Widget tncText() {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(top: 50, bottom: 30),
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
            ]),
      ),
    );
  }
}
