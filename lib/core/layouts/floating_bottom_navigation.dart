import 'package:flutter/material.dart';

class FloatingBottomNavigation extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const FloatingBottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final items = [
      Icons.home,
      Icons.search,
      Icons.favorite,
      Icons.account_circle,
    ];

    return Material(
      elevation: 8,
      borderRadius: BorderRadius.circular(48),
      color: Theme.of(context).colorScheme.onSecondary,
      child: Container(
        height: 65,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(items.length, (index) {
            final isSelected = currentIndex == index;
            return InkWell(
              onTap: () => onTap(index),
              borderRadius: BorderRadius.circular(80),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: isSelected
                    ? BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(80),
                      )
                    : null,
                child: Icon(
                  items[index],
                  color: isSelected
                      ? Theme.of(context).colorScheme.onPrimaryContainer
                      : Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
