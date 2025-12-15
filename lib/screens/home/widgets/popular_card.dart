import 'package:flutter/material.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/login/anime-grid.png",
      fit: BoxFit.cover,
    );
  }
}
