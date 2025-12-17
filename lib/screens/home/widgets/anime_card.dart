import 'package:flutter/material.dart';

class AnimeCard extends StatelessWidget {
  const AnimeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            "assets/home/anime.jpg",
            width: 90,
            height: 115,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          "Anime title",
          style: Theme.of(context).textTheme.bodySmall,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
