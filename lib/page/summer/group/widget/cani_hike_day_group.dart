import 'package:flutter/material.dart';
import 'package:whiteforest_website/shared/activity_section.dart';
import 'package:whiteforest_website/shared/utils.dart';

class CaniHikeDayGroup extends StatelessWidget {
  const CaniHikeDayGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return ActivitySection(
      title: 'Cani-randonnée journée',
      duration: '1 journée',
      pricesTitle: 'Tarifs groupes (+ de 15 personnes)',
      imagePath:
          'assets/images/summer/${getPathImage(context)}chalet.webp',
      description: const Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 16, fontFamily: 'Roboto', height: 1.6),
          children: [
            TextSpan(
              text:
                  "Basé sur la même pratique qu'à la demi-journée ",
            ),
            TextSpan(
              text: 'MAIS ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'en journée !\n'),
            TextSpan(text: 'Prévoyez votre déjeuner et partons sur '),
            TextSpan(
              text: 'les sentiers de montagne.\n',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'Explication sur le métier de '),
            TextSpan(
              text: 'musher ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'entre midi et deux !'),
          ],
        ),
      ),
      prices: const [
        PriceCard(text: '45€ / Adulte\n35€ / Enfant de -12 ans'),
      ],
      infos: const [
        InfoCard(
          title: 'Lieu de pratique',
          icon: Icons.location_on_outlined,
          content: Text(
            'La Toussuire\n'
            'Le Corbier\n'
            "Saint-Sorlin-d'Arves\n"
            "Saint-Jean-d'Arves\n"
            'Albiez-Montrond',
            style: TextStyle(fontFamily: 'Roboto', fontSize: 14, height: 1.5),
          ),
        ),
        InfoCard(
          title: 'Équipement',
          icon: Icons.checkroom_outlined,
          content: Text.rich(
            TextSpan(
              style:
                  TextStyle(fontFamily: 'Roboto', fontSize: 14, height: 1.5),
              children: [
                TextSpan(
                  text: 'Tenue de randonnée ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      '(chaussures de randonnée obligatoires), ',
                ),
                TextSpan(
                  text: 'imperméable',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      ", affaires chaudes pour le soir, sac à dos, bouteille d'eau.",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
