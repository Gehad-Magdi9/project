import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/utilis/context_extention.dart';
import 'package:project/featuers/login/view/page/login_page.dart';
import 'package:project/featuers/registration/controller/cubit/registration_cubit.dart';
//import 'package:project/featuers/registration/view/page/registration_page.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key, required this.controller});

  final RegistrationCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: controller,
      child: BlocBuilder<RegistrationCubit, RegistrationState>(
        builder: (context, state) {
          RegistrationCubit controller = context.read<RegistrationCubit>();
          return Column(children: [
      SizedBox(
        height: context.height/10,
      ),
      //confirm
      FilledButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue.shade700)),
          onPressed: () {
            controller.onPressedConfirmButton(context);
            },
          child: const Text("Confirm")),


      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Do you have an account ?"),
          //loginPageButton
          TextButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          }, child: const Text("Have an account")),
        ],
      )
    ]);
  })
  );
  }}