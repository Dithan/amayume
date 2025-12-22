import 'package:amayume/core/layouts/app_shell.dart';
import 'package:amayume/core/theme/app_background.dart';
import 'package:amayume/screens/home/widgets/list_card.dart';
import 'package:amayume/screens/home/widgets/popular_banner.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                // Banner principal 'Popular'
                PopularBanner(),
                SizedBox(height: 32),
                // Lista de animes
                ListCard(listTile: "Action"),
                SizedBox(height: 24),
                ListCard(listTile: "Romance"),
                SizedBox(height: 24),
                ListCard(listTile: "Sci-fi"),
                SizedBox(height: 24),
                ListCard(listTile: "Terror"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
