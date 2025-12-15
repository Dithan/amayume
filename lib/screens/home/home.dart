import 'package:amayume/core/theme/app_background.dart';
import 'package:amayume/screens/home/widgets/popular_banner.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              // Banner principal 'Popular'
              child: PopularBanner(),
            ),
            // Lista de animes...
            // Lista de animes...
            // Lista de animes...
          ),
        ),
      ),
    );
  }
}
