import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/cubit/auth_cubit.dart';
import 'package:travelapp/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      User? user = FirebaseAuth.instance.currentUser;

      if (user == null) {
        Navigator.of(context).pushReplacementNamed('/get-started');
      } else {
        context.read<AuthCubit>().getCurrentUser(user.uid);
        Navigator.of(context).pushReplacementNamed('/main');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 100,
              width: 100,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'AIRPLANE',
              style: whiteBoldTextStyle.copyWith(letterSpacing: 10),
            )
          ],
        ),
      ),
    );
  }
}
