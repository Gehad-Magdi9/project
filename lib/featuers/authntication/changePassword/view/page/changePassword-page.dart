// ignore_for_file: sort_child_properties_last


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/featuers/authntication/changePassword/controller/cubit/change_cubit.dart';
import 'package:project/featuers/authntication/changePassword/view/component/bottomChange-widget.dart';
import 'package:project/featuers/authntication/changePassword/view/component/changePassword-widget.dart';

class ChangePasswordPage extends StatelessWidget {
const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<ChangeCubit>(
        create: (context) => ChangeCubit(),
        child: BlocBuilder<ChangeCubit, ChangeState>(
          builder: (context, state) {
          final ChangeCubit controller =context.read<ChangeCubit>();
            return Scaffold(
              appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 34, 109, 171),
                title:  const Text("Change Password"),
                centerTitle: true,
              ),
              body: ChangePasswordWidget(
                controller: controller ,
              ),
              bottomNavigationBar:  SizedBox(
                child: BottomChangeWidget(
                  controller: controller,
                ),
                height: 300,
              ),
            );
          },
        ),
      ),
    );
  }
}
