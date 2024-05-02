import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/featuers/authntication/forgetPassword/controller/cubit/forget_password_controller_cubit.dart';

class BottomForgetnWidget extends StatelessWidget {
const BottomForgetnWidget({super.key,required this.controller });

final ForgetPasswordControllerCubit controller;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: controller,
      child: BlocBuilder<ForgetPasswordControllerCubit, ForgetPasswordControllerState>(
        builder: (context, state) {
        // ignore: unused_local_variable
        ForgetPasswordControllerCubit controller = context.read< ForgetPasswordControllerCubit>();
          return Column(
            children: [
              FilledButton(
                  style: const ButtonStyle(
                     backgroundColor: MaterialStatePropertyAll(
                     Color.fromARGB(255, 9, 122, 214))),
                  onPressed: () {controller.onpressedConfirmButton;}, //end onpressed

                  child: const Text("Confirm")),
                  const SizedBox(
                  height: 30,
                  ),
              FilledButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 9, 122, 214))),
                  onPressed: () {},
                  child: const Text("Back")),
            ],
          );
        },
      ),
    );
  }
}
