import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:whiteforest_website/shared/activity_section.dart';
import 'package:whiteforest_website/shared/utils.dart';

class CaniHikeNight extends StatelessWidget {
  const CaniHikeNight(this._scrollController, {super.key});

  final AnchorScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return ActivitySection(
      scrollController: _scrollController,
      index: 2,
      title: 'Cani-randonnée nocturne',
      duration: '3H / 4H',
      imagePath:
          'assets/images/summer/${getPathImage(context)}cani_rando_nocturne.webp',
      description: const Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 16, fontFamily: 'Roboto', height: 1.6),
          children: [
            TextSpan(
              text: 'Pratiquer la randonnée autrement ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  '!\nAmoureux des montagnes, de nourriture et de randonnée, cette activité est ',
            ),
            TextSpan(
              text: 'faite pour vous ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "!\nPartez à l'aventure tracté par un de nos fidèles ",
            ),
            TextSpan(
              text: 'chiens de traineau',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  ", équipé d'une ceinture et d'une ligne reliée au chien, vous serez guidé par un musher prêt à partager ",
            ),
            TextSpan(
              text: 'sa passion',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: '.\nUn moment '),
            TextSpan(
              text: 'gourmand ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "vous permettra de souffler et de déguster un bon plat avant de finir la balade à l'aide d'une lampe frontale et de votre compagnon à 4 pattes.\n",
            ),
            TextSpan(text: 'De '),
            TextSpan(
              text: 'beaux paysages',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: ', de '),
            TextSpan(
              text: 'beaux couchers de soleil ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'et des '),
            TextSpan(
              text: 'moments de complicité ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'avec nos chiens vous attendent.'),
          ],
        ),
      ),
      prices: const [
        PriceCard(text: '75€ / Adulte'),
        PriceCard(text: '70€ / Enfant de -12 ans'),
      ],
      infos: [
        InfoCard(
          title: 'Lieu de pratique',
          icon: Icons.location_on_outlined,
          content: const Text.rich(
            TextSpan(
              style:
                  TextStyle(fontFamily: 'Roboto', fontSize: 14, height: 1.5),
              children: [
                TextSpan(text: 'Mardi soir 17h30 — '),
                TextSpan(
                  text: 'La Toussuire\n',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: 'Jeudi soir 18h00 — '),
                TextSpan(
                  text: "Saint-Sorlin-d'Arves",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        const InfoCard(
          title: 'Réservations packages',
          icon: Icons.confirmation_number_outlined,
          content: Text.rich(
            TextSpan(
              style:
                  TextStyle(fontFamily: 'Roboto', fontSize: 14, height: 1.5),
              children: [
                TextSpan(
                  text:
                      'Les réservations incluant un repas au restaurant sont à effectuer via le site de l\'',
                ),
                TextSpan(
                  text: 'Office de tourisme de La Toussuire\n',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: 'ou par téléphone : '),
                TextSpan(
                  text: '06.82.75.99.26',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        const InfoCard(
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