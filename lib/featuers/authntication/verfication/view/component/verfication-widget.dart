import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/utilis/myInputBox.dart';
import 'package:project/featuers/authntication/verfication/controller/cubit/verfication_cubit.dart';

class VerficationWidget extends StatelessWidget {
const VerficationWidget({super.key, required this.controller});
final VerficationCubit controller;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: controller,
      child: BlocBuilder<VerficationCubit, VerficationState>(
        builder: (context, state) {
        // ignore: unused_local_variable
        final VerficationCubit controller =context.read<VerficationCubit>();
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Verification Code',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 50),
              const Text(
                'Enter the 4 digit verification code received',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  myInputBox(context, controller.txt1),
                  myInputBox(context, controller.txt2),
                  myInputBox(context, controller.txt3),
                  myInputBox(context, controller.txt4),
                ],
              ),
              const SizedBox(height: 70),
              FilledButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 9, 122, 214),
                    ),
                  ),
                  onPressed: () {
                    controller.onpressedVerfyButton; }, //end onpressed

                  child: const Text("verfy",
                      style: TextStyle(fontSize: 25, color: Colors.black))),
              const SizedBox(
                width: double.infinity,
                height: 50,
              ),
              FilledButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 9, 122, 214))),
                  onPressed: () {controller.onpressedCancelButton;},
                  child: const Text("Cancel",
                   style: TextStyle(fontSize: 25, color: Colors.black)
                   )
                   ),
            ],
          );
        },
      ),
    );
  }
}


