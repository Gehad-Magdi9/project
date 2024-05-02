import 'package:flutter/material.dart';
import 'package:project/featuers/authntication/registration/view/page/registration_page.dart';


class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //forgetButton
            TextButton(
                onPressed: () {
                  ///Forget page
                },
                child: const Text("Forget Password")),
            ///loginButton
            FilledButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.blue.shade700)),
                 onPressed: () {/*enter to the app*/},
                child: const Text("Login")),
            TextButton(
                onPressed: () {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RegistrationPage()),
            );
                },
                child: const Text("Create new account?")),
          ],
        ),
      ],
    );
  }
}
