import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:project/featuers/onboarding/model/onboarding_model.dart';

part 'onboarding_controller_cubit_state.dart';

class OnboardingControllerCubit extends Cubit<OnboardingControllerCubitState> {
  OnboardingControllerCubit() : super(OnboardingControllerCubitInitial());
  PageController pageController = PageController();
  void onChangeToNext() {
    pageController.nextPage(
        duration: const Duration(seconds: 2), curve: Curves.bounceIn);
  }
  List data = [
    OnboardingModel(
        image: 'assets/images/plan your trip.jpg',
        title: 'Plan Your Trip',
        color: Colors.black),
    OnboardingModel(
        image: 'assets/images/yourLifestyle.jpg',
        title: 'Your Life Style ',
        color: Colors.black),
    OnboardingModel(
        image: 'assets/images/My Daily Planner.jpg',
        title: 'OR Your Day',
        color: Colors.black),
  ];
}
