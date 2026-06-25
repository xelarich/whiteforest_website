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
      title: 'Cani-randonnée & Nuit en refuge',
      duration: '2 jours / 1 nuit',
      imagePath:
          'assets/images/summer/${getPathImage(context)}refuge.webp',
      description: const Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 16, fontFamily: 'Roboto', height: 1.6),
          children: [
            TextSpan(
              text: 'Canirandonnée et nuit en refuge',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  ', partez en cani-rando au départ de St François Longchamp. '
                  'Après 2h de rando entre montagne et forêt, découvrez le ',
            ),
            TextSpan(
              text: 'Refuge du Lac de la Grande Léchère',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: ' !\n'),
            TextSpan(
              text: 'Aline et Amélie ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  'vous accueilleront dans ce petit paradis pour un délicieux repas dans une ambiance conviviale.\n',
            ),
            TextSpan(text: 'Après une belle '),
            TextSpan(
              text: 'nuit en montagne',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: ', un '),
            TextSpan(
              text: 'petit déjeuner de champion',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  ', un retour possible par le Col de Montjoie pour rentrer en beauté.',
            ),
          ],
        ),
      ),
      prices: const [
        PriceCard(
          text: '170€ / Adulte — dès 13 ans\nActivité, matériel, repas, nuitée et petit déjeuner',
        ),
        PriceCard(
          text: '150€ / Enfant — de 10 à 12 ans\nActivité, matériel, repas, nuitée et petit déjeuner',
        ),
      ],
      infos: [
        const InfoCard(
          title: 'Départ',
          icon: Icons.location_on_outlined,
          content: Text.rich(
            TextSpan(
              style:
                  TextStyle(fontFamily: 'Roboto', fontSize: 14, height: 1.5),
              children: [
                TextSpan(
                  text: 'Parking de St François Longchamp\n',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: 'Départ à '),
                TextSpan(
                  text: '15h30',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: ' — retour entre 8h et 9h le lendemain'),
              ],
            ),
          ),
        ),
        const InfoCard(
          title: 'Dates',
          icon: Icons.calendar_today_outlined,
          content: Text.rich(
            TextSpan(
              style:
                  TextStyle(fontFamily: 'Roboto', fontSize: 14, height: 1.6),
              children: [
                TextSpan(
                  text: 'Vendredi\n',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: '4-5 sept  •  11-12 sept  •  18-19 sept\n'),
                TextSpan(
                  text: '\nSamedi\n',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      '26-27 sept  •  3-4 oct  •  10-11 oct\n7-8 nov  •  14-15 nov',
                ),
              ],
            ),
          ),
        ),
        InfoCard(
          title: 'Réservations',
          icon: Icons.confirmation_number_outlined,
          content: Text.rich(
            TextSpan(
              style:
                  TextStyle(fontFamily: 'Roboto', fontSize: 14, height: 1.5),
              children: [
                TextSpan(
                  text: 'Ouverture fin juin\n',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      "Packages (refuge + repas) à réserver via le site de l'",
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
                  text: '(chaussures de randonnée obligatoires), ',
                ),
                TextSpan(
                  text: 'imperméable',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      ", affaires chaudes pour la nuit, sac à dos, bouteille d'eau.",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
