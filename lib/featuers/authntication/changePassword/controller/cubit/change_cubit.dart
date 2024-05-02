import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'change_state.dart';

class ChangeCubit extends Cubit<ChangeState> {
  ChangeCubit() : super(ChangeInitial());


  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();




  GlobalKey<FormState> formConfirmKey = GlobalKey<FormState>();

  void onpressedSaveButton(BuildOwner context){
    if(formConfirmKey.currentState!.validate())
    {
     Navigator.pushNamed(context as BuildContext, 'change');
    }else{log("missmatch password");}

  }
  void onpressedBackButton(BuildOwner context){
  Navigator.pushNamed(context as BuildContext, 'forget');

}


}