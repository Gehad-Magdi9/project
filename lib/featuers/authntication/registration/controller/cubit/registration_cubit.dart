// ignore_for_file: avoid_print

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';


part 'registration_state.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit() : super(RegistrationInitial());
  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void onPressedConfirmButton(BuildContext context) {
    if (formKey.currentState!.validate()) {
            Navigator.pushNamed(
                    context,'login',
                  );
    } else {
      log('invalid input');
    }
  }
  
}


