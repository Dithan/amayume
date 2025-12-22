import 'package:amayume/core/layouts/floating_bottom_navigation.dart';
import 'package:amayume/core/theme/app_background.dart';
import 'package:flutter/material.dart';


class AppShell extends StatelessWidget {
  final Widget child;

  const AppShell({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FloatingBottomNavigation(),
      body: AppBackground(child: child),
    );
  }
}
