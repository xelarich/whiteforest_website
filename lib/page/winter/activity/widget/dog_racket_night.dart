import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/shared/activity_section.dart';

class DogRacketNight extends StatelessWidget {
  const DogRacketNight(this._scrollController, {super.key});

  final AnchorScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;
    final imageName = isMobile
        ? 'cani_raquette_nocturne.webp'
        : 'cani_nocturne.webp';
    final pathPrefix = isMobile ? 'mobile/' : 'web/';

    return ActivitySection(
      scrollController: _scrollController,
      index: 2,
      title: 'Cani-randonnée hivernale',
      duration: '5H',
      imagePath: 'assets/images/winter/$pathPrefix$imageName',
      description: const Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 16, fontFamily: 'Roboto', height: 1.6),
          children: [
            TextSpan(text: 'Le '),
            TextSpan(
              text: 'mardi soir ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'ou le '),
            TextSpan(
              text: 'jeudi soir ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: "tout l'hiver, et certains "),
            TextSpan(
              text: 'mercredis soir',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: ' au Corbier'),
            TextSpan(
              text:
                  ", venez découvrir la cani-nocturne ! Équipé d'une ceinture et relié à un chien de traineau, cette randonnée vous laissera ",
            ),
            TextSpan(
              text: 'un agréable souvenir.\n',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  'Vous créerez une relation toute particulière avec votre binôme à quatre pattes et le musher qui vous accompagne dans ',
            ),
            TextSpan(
              text: 'un paysage nocturne',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  ". Sans oublier la pause dîner en altitude ou dans la vallée de l'Arvan, où vous vous ",
            ),
            TextSpan(
              text: 'régalerez ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  'après un bel effort, un retour prévu aux alentours de 23h00. ',
            ),
            TextSpan(
              text: 'Avec une dernière papouille à votre fidèle compagnon !',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      prices: const [
        PriceCard(
          text:
              '90€ / Adulte\n'
              "Comprend : l'activité + repas\n"
              '(apéritif, plat, dessert, café)',
        ),
        PriceCard(
          text:
              '85€ / Enfant de -12 ans\n'
              "Comprend : l'activité + repas\n"
              '(apéritif, plat, dessert, café)',
        ),
      ],
      infos: [
        InfoCard(
          title: 'Lieu de pratique',
          icon: Icons.location_on_outlined,
          content: const Text.rich(
            TextSpan(
              style: TextStyle(fontFamily: 'Roboto', fontSize: 14, height: 1.5),
              children: [
                TextSpan(text: 'Mardi soir 17h30 — '),
                TextSpan(
                  text: 'La Toussuire\n',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: 'Jeudi soir 18h00 — '),
                TextSpan(
                  text: "Saint-Sorlin-d'Arves\n",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: 'Toute la saison hivernale\n\n'),
                TextSpan(text: 'Mercredi soir 17h30 — '),
                TextSpan(
                  text: 'Le Corbier\n',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      '23 et 30 décembre\n'
                      '10, 17 et 24 février\n'
                      '3 et 10 mars',
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
              style: TextStyle(fontFamily: 'Roboto', fontSize: 14, height: 1.5),
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
        const InfoCard(
          title: 'Nos partenaires',
          icon: Icons.restaurant_outlined,
          content: Text(
            "Restaurants :\nChez Bib\nL'éTable des Prés Plan\nChalet 2000 (Le Corbier)",
            style: TextStyle(fontFamily: 'Roboto', fontSize: 14, height: 1.5),
          ),
        ),
      ],
    );
  }
}
