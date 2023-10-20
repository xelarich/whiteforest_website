import 'package:flutter/material.dart';
import 'package:whiteforest_website/shared/styles.dart';

class IndicatorDifficulty extends StatelessWidget {
  final int difficulty;

  const IndicatorDifficulty(this.difficulty, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(4),
          child: Icon(
            Icons.pets,
            color: 1 <= difficulty
                ? Styles.primaryColor
                : Styles.primaryColor.shade100,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: Icon(
            Icons.pets,
            color: 2 <= difficulty
                ? Styles.primaryColor
                : Styles.primaryColor.shade100,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: Icon(
            Icons.pets,
            color: 3 <= difficulty
                ? Styles.primaryColor
                : Styles.primaryColor.shade100,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          "Niveau $difficulty/3",
          style: const TextStyle(
              fontFamily: 'Roboto', fontSize: 14, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
