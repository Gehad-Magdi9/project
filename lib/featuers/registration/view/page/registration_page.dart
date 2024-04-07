import 'package:flutter/material.dart';
import 'package:project/featuers/registration/view/components/bottom_widget.dart';
import 'package:project/featuers/registration/view/components/required_data_widget.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});
  @override
  Widget build(BuildContext context) {
    
    return const SafeArea(
      child: Scaffold(
      body:RequriedDataWiedget() ,
      bottomNavigationBar:SizedBox(height: 100,child: BottomNavigationWidget(),),

    ),
    );

  }
}
