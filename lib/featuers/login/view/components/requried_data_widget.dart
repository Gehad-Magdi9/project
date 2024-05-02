import 'package:flutter/material.dart';
import 'package:project/core/utilis/validation.dart';
// ignore: unused_import
 import 'package:project/featuers/registration/controller/cubit/registration_cubit.dart';

class LoginRequriedDataWiedget extends StatelessWidget {
  const LoginRequriedDataWiedget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text("Login",
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic))
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        ////email
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          // controller: TextEditingController(),
          keyboardType: TextInputType.name,
          validator: MyValidation().emailvalidate,
          decoration: InputDecoration(
            label: const Text("Email"),
            prefixIcon: const Icon(Icons.mail),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: ("your email"),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue.shade600, width: 2),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green.shade200, width: 2),
                borderRadius: BorderRadius.circular(30)),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red.shade200, width: 2),
                borderRadius: BorderRadius.circular(30)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),

        ///password
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          // controller: TextEditingController(),
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
                borderSide: BorderSide(color: Colors.blue.shade600, width: 2),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green.shade200, width: 2),
                borderRadius: BorderRadius.circular(30)),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red.shade200, width: 2),
                borderRadius: BorderRadius.circular(30)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
