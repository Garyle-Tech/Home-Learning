import 'package:flutter/material.dart';
import '/path.dart';

class HomeLearningApp extends StatelessWidget {
  const HomeLearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Learning',
      routes: AppRoutes.routes,
    );
  }
}
