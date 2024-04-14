import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/featuers/onboarding/controller/cubit/onboarding_controller_cubit.dart';
import 'package:project/featuers/onboarding/view/components/onboarding_body.dart';
import 'package:project/featuers/onboarding/view/components/onboarding_buttons.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<OnboardingControllerCubit>(
      create: (context) => OnboardingControllerCubit(),
      child: BlocBuilder<OnboardingControllerCubit,
          OnboardingControllerCubitState>(
        builder: (context, state) {
          OnboardingControllerCubit controller =context.read<OnboardingControllerCubit>();
          return Scaffold(
            body: OnboardingBody(controller: controller),
            bottomNavigationBar: OnboardingButtons(controller:controller ),
            
          );
        },
      ),
    ));
  }
}
