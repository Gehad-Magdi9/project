import 'package:flutter/material.dart';
import 'package:project/featuers/login/view/components/bootom_widget.dart';
import 'package:project/featuers/login/view/components/requried_data_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
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