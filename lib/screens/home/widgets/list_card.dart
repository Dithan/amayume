import 'package:amayume/screens/home/widgets/anime_card.dart';
import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  final String listTile;
  const ListCard({required this.listTile, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          listTile,
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 8),
        SizedBox(
          height: 140,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return AnimeCard();
            },
            separatorBuilder: (context, index) => SizedBox(width: 8),
            itemCount: 10,
          ),
        )
      ],
    );
  }
}
