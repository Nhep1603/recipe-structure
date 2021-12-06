import 'package:flutter/material.dart';

import '../screens/forgot_password_screen.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/on_boarding_screen.dart';
import '../screens/sign_up_screen.dart';
import './app_constants.dart' as app_constants;

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case app_constants.RouteNames.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case app_constants.RouteNames.onBoarding:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case app_constants.RouteNames.signUp:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      case app_constants.RouteNames.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case app_constants.RouteNames.forgotPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordScreen(),
        );    
      default:
        throw Exception();
    }
  }
}