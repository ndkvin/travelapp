import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/cubit/auth_cubit.dart';
import 'package:travelapp/shared/theme.dart';
import 'package:travelapp/ui/widgets/custom_button.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  final TextEditingController emailComntroller = TextEditingController(text: '');
  final TextEditingController passwordComntroller = TextEditingController(text: '');

  Widget title() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
      ),
      child: Text(
        "Sign in with your\existing account",
        style: blackSemiBoldTextStyle.copyWith(fontSize: 24),
      ),
    );
  }

  Widget input(BuildContext context) {
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
        emailInput(),
        passwordInput(),
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
              message: 'Sign In',
              onTap: () {
                context.read<AuthCubit>()
                  .signIn(email: emailComntroller.text, password: passwordComntroller.text);
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



  @override
  Widget build(BuildContext context) {

    Widget tncText() {
      return InkWell(
        onTap: () {
          Navigator.pushNamed(context, "/sign-up");
        },
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
