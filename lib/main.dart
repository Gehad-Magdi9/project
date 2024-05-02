import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:project/core/utilis/our_firebase.dart';
import 'package:project/featuers/dashboard/view/page/dashboard_page.dart';
import 'package:project/featuers/authntication/login/view/page/login_page.dart';
import 'package:project/featuers/onboarding/view/page/onboarding_page.dart';
import 'package:project/featuers/authntication/registration/view/page/registration_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await OurFirebase().init();
  
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // ignore: unused_local_variable
  bool onBoarding = sharedPreferences.getBool('onboarding') ?? false;

  MaterialApp materialApp = MaterialApp(
    // home: onBoarding ? const RegistrationPage() : const OnBoardingPage(),
    builder: DevicePreview.appBuilder,
    // ignore: deprecated_member_use
    useInheritedMediaQuery: true,
    onGenerateRoute: MyRoutes.onGenerateRoute,
    onGenerateInitialRoutes: (_) => MyRoutes.iniRoutes,
  );
  runApp(
  DevicePreview(
    enabled: false,
    builder: (context) => materialApp, // Wrap your app
  ),
  );
}

class MyRoutes {
  static List<Route> iniRoutes = [
    MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const OnBoardingPage()),
    MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const DashbordPage())
  ];

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'login':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => const LoginPage());
      case 'registration':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => const RegistrationPage());
      default:
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => const OnBoardingPage());
    }
  }
}