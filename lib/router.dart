import 'package:eco_commerce_app/routing_constants.dart';
import 'package:eco_commerce_app/ui/pages/homeScreen.dart';
import 'package:eco_commerce_app/ui/pages/loginScreen.dart';
import 'package:eco_commerce_app/ui/pages/preSignUpSlider.dart';
import 'package:eco_commerce_app/ui/pages/profileScreen.dart';
import 'package:eco_commerce_app/ui/pages/registerScreen.dart';
import 'package:eco_commerce_app/ui/pages/undefinedScreen.dart';
import 'package:eco_commerce_app/ui/pages/userOptionalScreen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case PreSignUpRoute:
      return MaterialPageRoute(builder: (context) => PreSignUpSlider());
    case LoginRoute:
      return MaterialPageRoute(builder: (context) => LoginScreen());
    case RegisterRoute:
      return MaterialPageRoute(builder: (context) => RegisterScreen());
    case HomeRoute:
      return MaterialPageRoute(builder: (context) => HomeScreen());
    case ProfileRoute:
      return MaterialPageRoute(builder: (context) => ProfileScreen());
    case UserOptionalRoute:
      return MaterialPageRoute(builder: (context) => UserOptionalScreen());
    default:
      return MaterialPageRoute(
          builder: (context) => UndefinedScreen(
                name: settings.name,
              ));
  }
}
