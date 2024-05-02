
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/utilis/validation.dart';
import 'package:project/featuers/authntication/changePassword/controller/cubit/change_cubit.dart';

class ChangePasswordWidget extends StatelessWidget {
const ChangePasswordWidget({super.key, required this.controller});
final ChangeCubit controller;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: controller,
      child: BlocBuilder<ChangeCubit, ChangeState>(
        builder: (context, state) {
        final  ChangeCubit controller = context.read< ChangeCubit>(); 
          return Form(
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     const Text(
                      "Enter New Password",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 4, 66, 116),
                        fontSize: 20,
                      ),
                      ), 
             
                     TextFormField(
                      
                        autovalidateMode:AutovalidateMode.onUserInteraction ,
                        obscureText: true,
                        obscuringCharacter: '*',
                        controller: controller.passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        validator: MyValidation().passwordValidation,
                        decoration:  InputDecoration(
                              labelText:"password" ,
                              floatingLabelAlignment: FloatingLabelAlignment.start,
                              floatingLabelBehavior:FloatingLabelBehavior.never ,
                              suffixIcon: const Icon(Icons.remove_red_eye),
                              hintText: "Aa2#" ,
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(20)
            
                              ), 
                                focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 51, 108, 154),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(20)
            
                              ) , 
                                errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 223, 26, 12),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(20)
            
                              )  
                        ),
            
                        
            
            
                     ),
              const SizedBox(height: 35,),
              const Text(
                      "Confirm Your New Password",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 4, 66, 116),
                        fontSize: 30,
                      ),
                      ),
            
                     TextFormField(
                        autovalidateMode:AutovalidateMode.onUserInteraction ,
                        obscureText: true,
                        obscuringCharacter: '*',
                        controller: controller.confirmPasswordController,
                        keyboardType: TextInputType.visiblePassword,
                        validator: (value) => confirmPasswordValidation(value, controller.confirmPasswordController.text),
                        decoration:  InputDecoration(
                              suffixIcon: const Icon(Icons.remove_red_eye),
                              labelText:"confirmPassword" ,
                              floatingLabelAlignment: FloatingLabelAlignment.start,
                              floatingLabelBehavior:FloatingLabelBehavior.never ,
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(20)
            
                              ), 
                                focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 51, 108, 154),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(20)
            
                              ) , 
                                errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 223, 26, 12),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(20)
            
                              )  
                        ),
            
                        
            
            
                     )
                  ],
                ),
          );
        },
      ),
    );
          


   
}

  confirmPasswordValidation(String? value, String confirmPassword) 
  {if (value != confirmPassword) {
    return 'Passwords do not match';
  }
  return null;}
}