import 'package:flutter/material.dart';
import 'package:whiteforest_website/shared/activity_section.dart';
import 'package:whiteforest_website/shared/utils.dart';

class HitchDrivingGroup extends StatelessWidget {
  const HitchDrivingGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return ActivitySection(
      title: "Conduite d'attelage : Découverte ou Expert",
      duration: '1H / 2H',
      pricesTitle: 'Tarifs groupes (+ de 15 personnes)',
      imagePath:
          'assets/images/winter/${getPathImage(context)}conduite_attelage_groupe.webp',
      description: const Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 16, fontFamily: 'Roboto', height: 1.6),
          children: [
            TextSpan(
              text:
                  'Envie de piloter un traineau, vous êtes sportif et dynamique, ',
            ),
            TextSpan(
              text: 'vous aimez les animaux.\n',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'Vivez en groupe une '),
            TextSpan(
              text: 'expérience unique, ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: "accompagné d'une "),
            TextSpan(
              text: 'monitrice diplômée.\n',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  'Par petit groupe de 6 vous arpentez la montagne et vous vous initiez à la ',
            ),
            TextSpan(
              text: "conduite d'attelage.\n",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'Vous apprendrez à '),
            TextSpan(
              text: 'diriger et contrôler votre traineau ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'ainsi que '),
            TextSpan(
              text: 'vos chiens.\n\n',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'Conduite "'),
            TextSpan(
              text: 'Découverte',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: '" : Activité en co-pilotage ou en solo sur 1H.\n',
            ),
            TextSpan(text: 'Conduite "'),
            TextSpan(
              text: 'Expert',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: '" : Activité uniquement en solo sur 2H.'),
          ],
        ),
      ),
      prices: const [
        PriceCard(
          text:
              'Conduite "Découverte"\nCo-pilotage : 45€ / personne\nSolo : 65€ / personne',
        ),
        PriceCard(text: 'Conduite "Expert"\nSolo : 110€ / personne'),
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
                  text: '(vêtements de ski, après ski, écharpe, gants).\n',
                ),
                TextSpan(text: 'Lunette ou masque. '),
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