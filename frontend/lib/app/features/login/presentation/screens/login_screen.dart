import 'package:flutter/material.dart';
import '/path.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body: LoginPageView(
        size: size,
      ),
    );
  }
}
