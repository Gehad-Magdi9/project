import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/featuers/onboarding/controller/cubit/onboarding_controller_cubit.dart';

// ignore: must_be_immutable
class OnboardingBody extends StatelessWidget {
  OnboardingBody({super.key, required this.controller});
  OnboardingControllerCubit controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Welcome in our app",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: BlocProvider<OnboardingControllerCubit>.value(
            value :controller,
            child: BlocBuilder<OnboardingControllerCubit, OnboardingControllerCubitState>(
              builder: (context, state) {
                OnboardingControllerCubit controller =context.read<OnboardingControllerCubit>();
                return PageView(
                controller: controller.pageController,
                  children: List.generate(controller.data.length, (index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(controller.data[index].image),
                        Text(
                          controller.data[index].title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    );
                  }),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
