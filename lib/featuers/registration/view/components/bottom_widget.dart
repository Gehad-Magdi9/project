import 'package:flutter/material.dart';
import 'package:project/featuers/login/view/page/login_page.dart';
//import 'package:project/featuers/registration/view/page/registration_page.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //confirm
      FilledButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue.shade700)),
          onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
            },
          child: const Text("Confirm")),


      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Do you have an account ?"),
          //loginPageButton
          TextButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          }, child: const Text("Have an account")),
        ],
      )
    ]);
  }
}
