
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'verfication_page.dart';

void main() async {
    SharedPreferences sharedpreference = await SharedPreferences.getInstance();
    bool onboarding = sharedpreference.getBool('onboarding') ?? false;
    // ignore: prefer_const_constructors
    MaterialApp materialapp = MaterialApp(
    onGenerateRoute: myroute.onGenerateRoute,
    onGenerateInitialRoutes: (_) => myroute.initroute,
    );
runApp(materialapp);
}





class myroute {
    static List<Route> initroute = [
        MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => const onboardingpage(),
        ),
        MaterialPageRoute<dynamic>(
        builder: ( BuildContext context) =>  const registerationpage(),
        ),
        MaterialPageRoute<dynamic>(
          builder: ( BuildContext context)  => const verficationpage(),
        ),
    ];
    static Route<dynamic> onGenerateRoute(RouteSettings setting) {
        switch (setting.name){  }
    }
}