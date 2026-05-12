import 'package:flutter/material.dart';
import 'package:whiteforest_website/shared/activity_section.dart';
import 'package:whiteforest_website/shared/utils.dart';

class DogKennelGroup extends StatelessWidget {
  const DogKennelGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return ActivitySection(
      title: 'Immersion musher ou visite du chenil',
      duration: '1H',
      pricesTitle: 'Tarifs groupes (+ de 15 personnes)',
      imagePath:
          'assets/images/summer/${getPathImage(context)}chenil.webp',
      description: const Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 16, fontFamily: 'Roboto', height: 1.6),
          children: [
            TextSpan(
              text: 'Durant 1 heure, au chenil à La Toussuire ou ',
            ),
            TextSpan(
              text: 'sur votre station, ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: 'écoutez et découvrez le métier de musher !\n',
            ),
            TextSpan(
              text:
                  "Qu'est-ce que c'est, d'où ça vient ? Que mangent les chiens ? Comment sont-ils entraînés ?\n",
            ),
            TextSpan(
              text:
                  'Le professionnel viendra accompagné de quelques chiens et de visuels pour vous présenter ',
            ),
            TextSpan(
              text: 'sa passion.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      prices: const [
        PriceCard(text: '15€ / Adulte\n10€ / Enfant de -12 ans'),
      ],
      infos: const [
        InfoCard(
          title: 'Lieu de pratique',
          icon: Icons.location_on_outlined,
          content: Text(
            'La Toussuire\nSur votre station',
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
                  text: 'Vêtements confortables ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      'qui ne craignent pas les poils et les traces de pattes, chaussures fermées, eau.',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
