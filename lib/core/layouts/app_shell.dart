import 'package:amayume/core/layouts/floating_bottom_navigation.dart';
import 'package:amayume/core/theme/app_background.dart';
import 'package:amayume/screens/favorites.dart';
import 'package:amayume/screens/home/home.dart';
import 'package:amayume/screens/profile.dart';
import 'package:amayume/screens/search.dart';
import 'package:flutter/material.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    Home(),
    Search(),
    Favorites(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: Stack(
          children: [
            IndexedStack(
              index: _currentIndex,
              children: _pages,
            ),
            Positioned(
              bottom: 24,
              left: 24,
              right: 24,
              child: FloatingBottomNavigation(
                currentIndex: _currentIndex,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
