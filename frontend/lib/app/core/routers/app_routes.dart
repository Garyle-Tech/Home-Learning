import 'package:flutter/material.dart';
import '/path.dart';

class AppRoutes {
  AppRoutes._();

  static Map<String, WidgetBuilder> get routes {
    return {
      RoutesConstantKeys.splash: (context) => const SplashScreen(),
      RoutesConstantKeys.login: (context) => const LoginScreen(),
    };
  }
}
