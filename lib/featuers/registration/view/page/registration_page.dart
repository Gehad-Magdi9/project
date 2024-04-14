import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/utilis/context_extention.dart';
import 'package:project/featuers/registration/controller/cubit/registration_cubit.dart';
import 'package:project/featuers/registration/view/components/bottom_widget.dart';
import 'package:project/featuers/registration/view/components/required_data_widget.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<RegistrationCubit>(
        create: (context) => RegistrationCubit(),
        child: BlocBuilder<RegistrationCubit, RegistrationState>(
          builder: (context, state) {
            final RegistrationCubit controller = context.read<RegistrationCubit>();
            return  Scaffold(
              body: RegistrationRequriedDataWiedget(
                 controller:controller,
                 ),
              bottomNavigationBar: SizedBox(
                height: context.height/4,
                child: BottomNavigationWidget(
                  controller:controller,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
