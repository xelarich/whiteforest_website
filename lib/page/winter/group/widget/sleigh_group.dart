import 'package:flutter/material.dart';
import 'package:whiteforest_website/shared/activity_section.dart';
import 'package:whiteforest_website/shared/utils.dart';

class SleighGroup extends StatelessWidget {
  const SleighGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return ActivitySection(
      title: 'Balade traineau',
      duration: '15 / 30 min',
      pricesTitle: 'Tarifs groupes (+ de 15 personnes)',
      imagePath:
          'assets/images/winter/${getPathImage(context)}traineau_groupe.webp',
      description: const Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 16, fontFamily: 'Roboto', height: 1.6),
          children: [
            TextSpan(text: 'Vivez une '),
            TextSpan(
              text: 'expérience ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  'entre amis ou en famille !\nVenez découvrir nos ',
            ),
            TextSpan(
              text: 'attelages ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "et profiter d'une balade enneigée de 15mn ou 30mn.\n"
                  "Accompagné d'une musheuse, celle-ci vous en apprendra davantage sur son métier.\n",
            ),
            TextSpan(
              text: 'Un joli souvenir ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'pour tout le monde.'),
          ],
        ),
      ),
      prices: const [
        PriceCard(
          text: '15 min\nAdulte : 30€ / personne\nEnfant : 25€ / personne',
        ),
        PriceCard(
          text: '30 min\nAdulte : 45€ / personne\nEnfant : 38€ / personne',
        ),
      ],
      infos: const [
        InfoCard(
          title: 'Lieu de pratique',
          icon: Icons.location_on_outlined,
          content: Text(
            'La Toussuire\n'
            "Saint-Sorlin-d'Arves\n"
            'Albiez-Montrond\n'
            "Saint-Jean-d'Arves\n"
            'Domaine skiable des Sybelles',
            style: TextStyle(fontFamily: 'Roboto', fontSize: 14, height: 1.5),
          ),
        ),
        InfoCard(
          title: 'Recommandations',
          icon: Icons.warning_amber_rounded,
          content: Text.rich(
            TextSpan(
              style:
                  TextStyle(fontFamily: 'Roboto', fontSize: 14, height: 1.5),
              children: [
                TextSpan(
                  text: 'ATTENTION : ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      "En fonction des conditions d'enneigement, le départ peut se faire en altitude (prévoir forfaits de ski).\n"
                      '180kg max par traineau.\n',
                ),
                TextSpan(
                  text: 'Interdit aux femmes enceintes ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: 'et '),
                TextSpan(
                  text: 'déconseillé aux personnes fragiles du dos.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
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
