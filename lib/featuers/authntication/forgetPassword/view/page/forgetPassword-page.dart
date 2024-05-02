
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/featuers/authntication/forgetPassword/controller/cubit/forget_password_controller_cubit.dart';
import 'package:project/featuers/authntication/forgetPassword/view/component/bottomForget-widget.dart';
import 'package:project/featuers/authntication/forgetPassword/view/component/forgetPassword-widget.dart';

class ForgetPasswordPage extends StatelessWidget {
const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<ForgetPasswordControllerCubit>(
        create: (context) => ForgetPasswordControllerCubit(),
        child: BlocBuilder<ForgetPasswordControllerCubit, ForgetPasswordControllerState>(
          builder: (context, state) {
          final ForgetPasswordControllerCubit controller = context.read<ForgetPasswordControllerCubit>();   
            return Scaffold(
              appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 34, 109, 171),
                title: const Text("Forget Password",
                    style: TextStyle(fontSize: 25, color: Colors.black)),
                centerTitle: true,
              ),
              body:  ForgetPasswordWidget(
                controller: controller,
              ),
              bottomNavigationBar:  SizedBox(
                height: 300,
                child: BottomForgetnWidget(
                  controller: controller,
                  ),
              ),
            );
          },
        ),
      ),
    );
  }
}
