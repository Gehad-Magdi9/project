part of 'onboarding_controller_cubit.dart';

@immutable
sealed class OnboardingControllerCubitState {}

final class OnboardingControllerCubitInitial extends OnboardingControllerCubitState {}
final class OnboardingPageChange extends OnboardingControllerCubitState {}
