import 'package:flutter/material.dart';
import 'package:travelapp/ui/pages/bonus_page.dart';
import 'package:travelapp/ui/pages/get_started_page.dart';
import 'package:travelapp/ui/pages/main_page.dart';
import 'package:travelapp/ui/pages/sign_up_page.dart';
import 'package:travelapp/ui/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color(0XFFE5E5E5),
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      home: const SplashPage(),
      routes: {
        '/splash': (context) => const SplashPage(),
        '/get-started': (context) => const GetStartedPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/bonus': (context) => const BonusPage(),
        '/main': (context) => const MainPage(),
      },
    );
  }
}