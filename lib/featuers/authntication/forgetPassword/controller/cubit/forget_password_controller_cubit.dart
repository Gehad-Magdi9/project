import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'forget_password_controller_state.dart';

class ForgetPasswordControllerCubit extends Cubit<ForgetPasswordControllerState> {
ForgetPasswordControllerCubit() : super(ForgetPasswordControllerInitial());


 TextEditingController emailController = TextEditingController();


  void onpressedConfirmButton(BuildOwner context)
  {
    if (emailController.text != " ") {
     Navigator.pushNamed(context as BuildContext, 'forget');
      } //end if
     // ignore: dead_code
    else {
        log("enter your email ");
         }
   } //end onpressed
  





}
