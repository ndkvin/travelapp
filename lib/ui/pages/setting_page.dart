import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/cubit/auth_cubit.dart';
import 'package:travelapp/shared/theme.dart';
import 'package:travelapp/ui/widgets/custom_button.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthFiled) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: redColor,
              content: Text(state.message),
            ),
          );
        } else if (state is AuthInitial) {
          Navigator.pushNamedAndRemoveUntil(context, "/sign-up", (route) => false);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Center(
              child: CustomButton(
            message: "Logout",
            width: 150,
            onTap: () {
              context.read<AuthCubit>().signOut();
            },
          )),
        );
      },
    );
  }
}
