

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/featuers/authntication/changePassword/controller/cubit/change_cubit.dart';

class BottomChangeWidget extends StatelessWidget {
const BottomChangeWidget({super.key, required this.controller});
final ChangeCubit controller;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: controller,
      child: BlocBuilder<ChangeCubit, ChangeState>(
        builder: (context, state) {
        // ignore: unused_local_variable
        final  ChangeCubit controller = context.read< ChangeCubit>(); 
          return Column(
            children: [
              FilledButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 9, 122, 214))),
                  onPressed: () {controller.onpressedSaveButton;},
                  child: const Text("save")),
              const SizedBox(
                height: 30,
              ),
              FilledButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                       Color.fromARGB(255, 9, 122, 214))),
                  onPressed: () {controller.onpressedBackButton;},
                      
                  child: const Text("Back")),
            ],
          );
        },
      ),
    );
  }
}
