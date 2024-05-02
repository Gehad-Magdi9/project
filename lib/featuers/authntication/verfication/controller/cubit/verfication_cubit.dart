
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
part 'verfication_state.dart';

class VerficationCubit extends Cubit<VerficationState> {
  VerficationCubit() : super(VerficationInitial());

final TextEditingController txt1 = TextEditingController();
final TextEditingController txt2 = TextEditingController();
final TextEditingController txt3 = TextEditingController();
final TextEditingController txt4 = TextEditingController();


void onpressedVerfyButton(BuildOwner context){
  final otp = txt1.text + txt2.text + txt3.text + txt4.text;
  if (otp == '1234') {
  Navigator.pushNamed(context as BuildContext, 'change');
  }
   else {
   
   log('invalid code');
  }
  }


void onpressedCancelButton(BuildOwner context){
  Navigator.pushNamed(context as BuildContext, 'forget');

}

}


