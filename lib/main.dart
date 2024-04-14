import 'package:flutter/material.dart';
import 'package:project/featuers/login/view/page/login_page.dart';
import 'package:project/featuers/onboarding/view/page/onboarding_page.dart';
import 'package:project/featuers/registration/view/page/registration_page.dart';

import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  // ignore: unused_local_variable
  bool onBoarding = sharedPreferences.getBool('onboarding') ?? false;

  MaterialApp materialApp = MaterialApp(
    // home: onBoarding ? const RegistrationPage() : const OnBoardingPage(),
    onGenerateRoute: MyRoutes.onGenerateRoute,
    onGenerateInitialRoutes: (_) => MyRoutes.iniRoutes,
  );
  runApp(materialApp);
}

class MyRoutes {
    static List<Route> iniRoutes = [
    MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const OnBoardingPage()),
    MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const RegistrationPage())
  ];

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'login':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => const LoginPage());
      case'registration':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => const RegistrationPage());
      default:
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => const OnBoardingPage());
    }
  }
}
