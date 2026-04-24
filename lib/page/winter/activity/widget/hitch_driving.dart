import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:whiteforest_website/shared/activity_section.dart';
import 'package:whiteforest_website/shared/utils.dart';

class HitchDriving extends StatelessWidget {
  const HitchDriving(this._scrollController, {super.key});

  final AnchorScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return ActivitySection(
      scrollController: _scrollController,
      index: 1,
      title: "Conduite d'attelage",
      duration: '1/2 Journée',
      imagePath:
          'assets/images/winter/${getPathImage(context)}conduite_attelage.webp',
      imageAlignment: Alignment.topCenter,
      description: const Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 16, fontFamily: 'Roboto', height: 1.6),
          children: [
            TextSpan(text: "Le temps d'"),
            TextSpan(
              text: 'une demi-journée ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'devenez le musher de '),
            TextSpan(
              text: 'votre propre attelage !\n',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "Avec 3 ou 4 chiens selon les conditions d'enneigement, découvrez les magnifiques ",
            ),
            TextSpan(
              text: 'paysages de la Maurienne.\n',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "Accompagné d'un musher professionnel pour vous encadrer durant votre pratique, et par petit groupe de 6 personnes maximum, vous apprendrez à",
            ),
            TextSpan(
              text: ' diriger et contrôler votre traineau ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'ainsi que '),
            TextSpan(
              text: 'vos chiens.\n',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "De bonnes conditions sportives sont requises pour pratiquer la conduite d'attelage !",
            ),
          ],
        ),
      ),
      prices: const [
        PriceCard(text: 'Demi-journée : 200€ / personne'),
      ],
      infos: const [
        InfoCard(
          title: 'Lieu de pratique',
          icon: Icons.location_on_outlined,
          content: Text(
            "Le Corbier / La Toussuire / Saint-Sorlin-d'Arves",
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
                  text:
                      '(vêtements de ski, après ski, écharpe, gants).\n',
                ),
                TextSpan(
                  text: 'Lunette ou masque. ',
                ),
                TextSpan(
                  text: 'Casque obligatoire ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: '(non fourni).'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}