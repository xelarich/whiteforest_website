import 'package:flutter/material.dart';
import 'package:whiteforest_website/shared/activity_section.dart';
import 'package:whiteforest_website/shared/utils.dart';

class CaniHikeGroup extends StatelessWidget {
  const CaniHikeGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return ActivitySection(
      title: 'Cani-randonnée initiation',
      duration: '1H30 / 2H',
      pricesTitle: 'Tarifs groupes (+ de 15 personnes)',
      imagePath:
          'assets/images/summer/${getPathImage(context)}cani_rando.webp',
      description: const Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 16, fontFamily: 'Roboto', height: 1.6),
          children: [
            TextSpan(
              text: 'Randonnée à pied',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  ", tracté par un chien de traineau à l'aide d'une ceinture et d'une ligne conçue spécialement pour l'activité !\n",
            ),
            TextSpan(
              text:
                  'Vous serez aidés par le chien pour arpenter nos montagnes, ponctués de ',
            ),
            TextSpan(
              text: 'pauses câlines ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'et de '),
            TextSpan(
              text: 'moments de partages canins et humains ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "!\nVous tomberez sous le charme de ces chiens ",
            ),
            TextSpan(
              text: 'extraordinaires ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "que ce soit par leur volonté à l'exercice ou leur tendresse.\n"
                  "L'activité comprend une explication sur la pratique de la cani-randonnée puis une balade de 1h30 à 2 heures.",
            ),
          ],
        ),
      ),
      prices: const [
        PriceCard(text: '25€ / Adulte\n19€ / Enfant de -12 ans'),
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
          title: 'Recommandations',
          icon: Icons.warning_amber_rounded,
          content: Text.rich(
            TextSpan(
              style:
                  TextStyle(fontFamily: 'Roboto', fontSize: 14, height: 1.5),
              children: [
                TextSpan(text: 'Les chiens sont adaptés à '),
                TextSpan(
                  text: 'votre condition physique.\n',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Accessible ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      'aux jeunes marcheurs mais aussi aux plus âgés !\n',
                ),
                TextSpan(
                  text: 'Interdit aux femmes enceintes.',
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
                  text: 'Tenue de randonnée ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      "(chaussures fermées obligatoires), bouteille d'eau.\n"
                      'Les bâtons de marche ne sont pas nécessaires.',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
