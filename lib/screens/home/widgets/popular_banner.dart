import 'package:amayume/screens/home/widgets/popular_card.dart';
import 'package:flutter/material.dart';

class PopularBanner extends StatelessWidget {
  const PopularBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Título
        Text(
          "Popular",
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 8),
        // Anime Banner
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: SizedBox(
            height: 200,
            child: PageView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return PopularCard();
              },
            ),
          ),
        )
      ],
    );
  }
}
