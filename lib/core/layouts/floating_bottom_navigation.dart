import 'package:flutter/material.dart';

class FloatingBottomNavigation extends StatefulWidget {
  const FloatingBottomNavigation({super.key});

  @override
  State<FloatingBottomNavigation> createState() =>
      _FloatingBottomNavigationState();
}

class _FloatingBottomNavigationState extends State<FloatingBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Text("Bottom Navoigation"),
    );
  }
}
