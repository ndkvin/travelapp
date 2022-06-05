import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/cubit/auth_cubit.dart';
import 'package:travelapp/cubit/destination_cubit.dart';
import 'package:travelapp/cubit/page_cubit.dart';
import 'package:travelapp/cubit/seat_cubit.dart';
import 'package:travelapp/ui/pages/bonus_page.dart';
import 'package:travelapp/ui/pages/get_started_page.dart';
import 'package:travelapp/ui/pages/main_page.dart';
import 'package:travelapp/ui/pages/payment_success.dart';
import 'package:travelapp/ui/pages/sign_in_page.dart';
import 'package:travelapp/ui/pages/sign_up_page.dart';
import 'package:travelapp/ui/pages/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => DestinationCubit(),
        ),
        BlocProvider(
          create: (context) => SeatCubit(),
        )
      ],
      child: MaterialApp(
        color: const Color(0XFFE5E5E5),
        debugShowCheckedModeBanner: false,
        title: 'Travel App',
        home: const SplashPage(),
        routes: {
          '/splash': (context) => const SplashPage(),
          '/get-started': (context) => const GetStartedPage(),
          '/sign-up': (context) => SignUpPage(),
          '/bonus': (context) => const BonusPage(),
          '/main': (context) => const MainPage(),
          '/payment_success': (context) => const  PaymentSuccess(),
          '/login': (context) => SignInPage(),
        },
      ),
    );
  }
}