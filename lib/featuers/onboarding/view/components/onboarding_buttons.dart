import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/featuers/onboarding/controller/cubit/onboarding_controller_cubit.dart';
import 'package:project/featuers/authntication/registration/view/page/registration_page.dart';
// ignore: must_be_immutable
class OnboardingButtons extends StatelessWidget {
  OnboardingButtons({super.key, required this.controller});
  OnboardingControllerCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingControllerCubit>.value(
            value :controller,
            child: BlocBuilder<OnboardingControllerCubit, OnboardingControllerCubitState>(
              builder: (context, state) {
                OnboardingControllerCubit controller =context.read<OnboardingControllerCubit>();
          return SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //first button skip
                TextButton(onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RegistrationPage()),
            );}, child: const Text("Skip")),
                //second button next
                TextButton(onPressed:controller.onChangeToNext, child: const Text("Next"))
              ],
            ),
          );
        },
      ),
    );
  }
}
