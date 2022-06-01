import 'package:flutter/material.dart';
import 'package:travelapp/cubit/page_cubit.dart';
import 'package:travelapp/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonButtomNavbar extends StatelessWidget {

  final int index;
  final String icon;

  ButtonButtomNavbar({
    Key? key,
    required this.index,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Image.asset(
            icon,
            height: 24,
            width: 24,
            color: context.read<PageCubit>().state == index ? purpleColor : blackColor,
          ),
          Container(
            height: 2,
            width: 30,
            decoration: BoxDecoration(
              color:  context.read<PageCubit>().state == index ? purpleColor : whiteColor,
              borderRadius: BorderRadius.circular(18)
            ),
          )
        ],
      ),
    );
  }
}