import "package:flutter/material.dart";
import 'package:travelapp/cubit/seat_cubit.dart';
import 'package:travelapp/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatWidget extends StatefulWidget {
  bool isAvailable;
  String id;

  SeatWidget({Key? key, this.isAvailable = true, required this.id})
      : super(key: key);

  @override
  State<SeatWidget> createState() => _SeatWidgetState(isAvailable, id);
}

class _SeatWidgetState extends State<SeatWidget> {
  bool isAvailable;
  String id;

  _SeatWidgetState(this.isAvailable, this.id);
  @override
  Widget build(BuildContext context) {
    bool isSelected = context.read<SeatCubit>().isSelected(id);

    Color bgColor() {
      if (!isAvailable) {
        return greyColor;
      } else {
        if (isSelected) {
          return purpleColor;
        } else {
          return greyPurple;
        }
      }
    }

    Color borderColor() {
      if (!isAvailable) {
        return greyColor;
      } else {
        return purpleColor;
      }
    }

    return BlocBuilder<SeatCubit, List<String>>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            if(isAvailable) {
              context.read<SeatCubit>().addSeat(id);
            }
          },
          child: Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: bgColor(),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: borderColor(),
                width: 2,
              ),
            ),
            child: Center(
              child: Text(isSelected ? "YOU" : "",
                  style: blackSemiBoldTextStyle.copyWith(
                    color: whiteColor,
                    fontSize: 14,
                  )),
            ),
          ),
        );
      },
    );
  }
}
