import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:whiteforest_website/shared/activity_section.dart';
import 'package:whiteforest_website/shared/utils.dart';

class DogKennel extends StatelessWidget {
  const DogKennel(this._scrollController, {super.key});

  final AnchorScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return ActivitySection(
      scrollController: _scrollController,
      index: 3,
      title: 'Visite du chenil',
      duration: '1H',
      imagePath:
          'assets/images/summer/${getPathImage(context)}chenil.webp',
      description: const Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 16, fontFamily: 'Roboto', height: 1.6),
          children: [
            TextSpan(
              text:
                  'Un endroit conçu pour nos partenaires canins, environ 1 heure avec plus ou moins ',
            ),
            TextSpan(
              text: '35 loulous ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "demandeurs de câlins et d'attention.\n",
            ),
            TextSpan(text: 'Des mushers '),
            TextSpan(
              text: 'passionnés ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  'prêts à vous expliquer leur travail, leur passion et la vie de leurs chiens.\n',
            ),
            TextSpan(
              text:
                  "Apprenez-en plus sur le métier de musher, sur l'éducation, l'entraînement et ",
            ),
            TextSpan(
              text: 'les différents aspects ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'de notre métier.'),
          ],
        ),
      ),
      prices: const [
        PriceCard(text: '15€ / Adulte'),
        PriceCard(text: '10€ / Enfant de -12 ans'),
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