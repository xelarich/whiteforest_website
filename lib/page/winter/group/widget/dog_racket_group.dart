import 'package:flutter/material.dart';
import 'package:whiteforest_website/shared/activity_section.dart';
import 'package:whiteforest_website/shared/utils.dart';

class DogRacketGroup extends StatelessWidget {
  const DogRacketGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return ActivitySection(
      title: 'Cani-randonnée hivernale',
      duration: '1H30 / 2H',
      pricesTitle: 'Tarifs groupes (+ de 15 personnes)',
      imagePath:
          'assets/images/winter/${getPathImage(context)}cani_nocturne_groupe.webp',
      description: const Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 16, fontFamily: 'Roboto', height: 1.6),
          children: [
            TextSpan(
              text:
                  "Une activité emblématique dans l'univers du chien de traineau, une façon ",
            ),
            TextSpan(
              text: 'ludique et simple ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'de découvrir la randonnée.\n'),
            TextSpan(text: "Accompagné d'"),
            TextSpan(
              text: 'un chien de traineau, ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'celui-ci vous aidera durant votre balade.\n'),
            TextSpan(text: 'Vous créerez '),
            TextSpan(
              text: 'une relation ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'toute particulière avec '),
            TextSpan(
              text: 'votre binôme à quatre pattes et le musher ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'qui vous accompagne.'),
          ],
        ),
      ),
      prices: const [
        PriceCard(text: '25€ / Adulte\n10€ / Enfant de -12 ans'),
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
                  text: 'Tenue chaude ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: '(vêtements de ski, après ski, écharpe, gants).',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}