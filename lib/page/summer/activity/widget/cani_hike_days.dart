import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:whiteforest_website/shared/activity_section.dart';
import 'package:whiteforest_website/shared/utils.dart';

class CaniHikeDays extends StatelessWidget {
  const CaniHikeDays(this._scrollController, {super.key});

  final AnchorScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return ActivitySection(
      scrollController: _scrollController,
      index: 0,
      title: 'Cani-randonnée deux jours',
      duration: '2 jours',
      imagePath:
          'assets/images/summer/${getPathImage(context)}chalet.webp',
      description: const Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 16, fontFamily: 'Roboto', height: 1.6),
          children: [
            TextSpan(text: "C'est "),
            TextSpan(
              text: 'la nouveauté ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "de cette saison ! Partez à l'aventure aux pieds des ",
            ),
            TextSpan(
              text: "Aiguilles d'Arves.\n",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'Toujours en cani-randonnée, '),
            TextSpan(
              text: 'parcourez un paysage',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  ", entre terre d'alpage, rivière, et roche. "
                  "Laissez vous guider par ces trois géants de pierre pour une randonnée d'environ 3 heures.\n",
            ),
            TextSpan(
              text: 'Chiens et humains ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "arpenteront les sentiers jusqu'au ",
            ),
            TextSpan(
              text: 'chalet Perron ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  'où Patricia nous recevra pour un repas savoyard et une nuit en refuge. ',
            ),
            TextSpan(
              text: 'Histoire, partage, et vue imprenable ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'sont au rendez-vous !\n'),
            TextSpan(
              text:
                  "Un petit déjeuner généreux et c'est reparti pour un retour tout aussi sympathique.",
            ),
          ],
        ),
      ),
      prices: const [
        PriceCard(text: '200€ / personne'),
      ],
      infos: const [
        InfoCard(
          title: 'Lieu de pratique',
          icon: Icons.location_on_outlined,
          content: Text(
            'Le Chalmieu',
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
                  text: '(chaussures de randonnée obligatoires), ',
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