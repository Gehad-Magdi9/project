import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/utilis/validation.dart';
import 'package:project/featuers/authntication/forgetPassword/controller/cubit/forget_password_controller_cubit.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({super.key,required this.controller});
 final ForgetPasswordControllerCubit controller;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: controller,
      child: BlocBuilder<ForgetPasswordControllerCubit, ForgetPasswordControllerState>(
        builder: (context, state) {
              
        ForgetPasswordControllerCubit controller = context.read< ForgetPasswordControllerCubit>();    
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Enter your email",
                style: TextStyle(
                  color: Color.fromARGB(255, 4, 66, 116),
                  fontSize: 25,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: controller.emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: MyValidation().emailValidation,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      hintText: "write your email here",
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 4, 66, 116),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                          errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 223, 26, 12),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10))),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
