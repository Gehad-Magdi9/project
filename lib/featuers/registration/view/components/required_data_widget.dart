import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: unused_import
import 'package:project/core/utilis/context_extention.dart';
import 'package:project/core/utilis/validation.dart';
import 'package:project/featuers/registration/controller/cubit/registration_cubit.dart';

// ignore: must_be_immutable
class RegistrationRequriedDataWiedget extends StatelessWidget {
  const RegistrationRequriedDataWiedget({super.key, required this.controller});

  final RegistrationCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: controller,
      child: BlocBuilder<RegistrationCubit, RegistrationState>(
        builder: (context, state) {
          RegistrationCubit controller = context.read<RegistrationCubit>();
          return Form (
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Title
                 Row(
                  children: [
                    SizedBox(
                      width: context.width / 4,
                    ),
                    const Text("Sign Up",
                        style:
                            TextStyle(fontSize: 20, fontStyle: FontStyle.italic))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ///name
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: controller.nameController,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[A-Z0-9]')),
                  ],
                  keyboardType: TextInputType.name,
                  validator: MyValidation().nameValidate,
                  decoration: InputDecoration(
                    label: const Text("User Name"),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: ("your user name"),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.shade600, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.green.shade200, width: 2),
                        borderRadius: BorderRadius.circular(30)),
                      errorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.red.shade200, width: 2),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
            
                ///email
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: controller.mailController,
                  keyboardType: TextInputType.name,
                  validator: MyValidation().emailvalidate,
                  decoration: InputDecoration(
                    label: const Text("Email"),
                    prefixIcon: const Icon(Icons.mail),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: ("your email"),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.shade600, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.green.shade200, width: 2),
                        borderRadius: BorderRadius.circular(30)),
                    errorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.red.shade200, width: 2),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
            
                ///password
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: controller.passwordController,
                  keyboardType: TextInputType.name,
                  validator: MyValidation().passwordValidate,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    label: const Text("password"),
                    prefixIcon: const Icon(Icons.lock),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: ("your password"),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.shade600, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.green.shade200, width: 2),
                        borderRadius: BorderRadius.circular(30)),
                    errorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.red.shade200, width: 2),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
            
                ///phone
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: controller.phoneController,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.name,
                  validator: MyValidation().phonevalidate,
                  decoration: InputDecoration(
                    label: const Text("Phone"),
                    prefixIcon: const Icon(Icons.phone),
                    hintText: ("your phone"),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue.shade600, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.green.shade200, width: 2),
                        borderRadius: BorderRadius.circular(30)),
                    errorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.red.shade200, width: 2),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
