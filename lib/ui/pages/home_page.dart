import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/cubit/auth_cubit.dart';
import 'package:travelapp/cubit/destination_cubit.dart';
import 'package:travelapp/models/destination_model.dart';
import 'package:travelapp/shared/theme.dart';
import 'package:travelapp/ui/widgets/new_this_year_card.dart';
import 'package:travelapp/ui/widgets/popular_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<DestinationCubit>().fetchDestinations();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Howdy,\n${state.user.name}",
                          textAlign: TextAlign.start,
                          style: blackSemiBoldTextStyle.copyWith(
                            fontSize: 24,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/profile.png',
                                ),
                                fit: BoxFit.fill,
                              )),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Where to fly today?",
                      style: whiteLightTextStyle.copyWith(
                          fontSize: 16, color: greyColor),
                    )
                  ],
                ));
          } else {
            return Container();
          }
        },
      );
    }

    Widget popularDestination(List<DestinationModel> destinations) {
      print(destinations.length);
      return Container(
        margin: const EdgeInsets.only(
          top: 10,
          left: 24,
        ),
        height: 323,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: destinations.length,
          itemBuilder: (context, index) => popularCard(
            destination: destinations[index],
          ),
        ),
      );
    }

    Widget newThisYears() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("New This Year", style: blackSemiBoldTextStyle),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: List.generate(5, (index) => newThisYearCard()),
            )
          ],
        ),
      );
    }

    return BlocConsumer<DestinationCubit, DestinationState>(
      listener: (context, state) {
        if(state is DestinationFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: redColor,
              content: Text(state.message),
            ),
          );
        }
      },
      builder: (context, state) {
        if(state is DestinationSuccess) {
          return Scaffold(
            body: SafeArea(
              child: ListView(
                children: [
                  header(),
                  popularDestination(state.destinations),
                  newThisYears(),
                ],
              ),
            ),
          );
        } else  {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      }
    );
  }
}
