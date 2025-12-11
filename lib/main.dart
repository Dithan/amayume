import 'package:amayume/core/theme/app_background.dart';
import 'package:amayume/core/theme/app_theme.dart';
import 'package:amayume/screens/login/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amayume',
      theme: AmayumeTheme.theme,
      home: AppBackground(child: Login()),
    );
  }
}
