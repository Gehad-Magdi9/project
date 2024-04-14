import 'package:flutter/material.dart';

class OnboardingModel {
  late String image, title;
  late Color color;
  OnboardingModel(
      {required this.image, 
      this.color = Colors.black, 
      required this.title,
   });
}
