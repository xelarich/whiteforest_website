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
          'assets/images/winter/${getPathImage(context)}chenil_winter.webp',
      imageAlignment: Alignment.bottomCenter,
      description: const Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 16, fontFamily: 'Roboto', height: 1.6),
          children: [
            TextSpan(text: 'Vous souhaitez en apprendre plus sur '),
            TextSpan(
              text: 'nos chiens, ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'sur notre façon de les '),
            TextSpan(
              text: 'chouchouter.\n',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'Entouré de nos '),
            TextSpan(
              text: '68 chiens ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "à papouiller, venez découvrir davantage les races qui composent la meute, sur leur alimentation, leur provenance.\n",
            ),
            TextSpan(text: 'Notre musher vous expliquera '),
            TextSpan(
              text: 'son métier, ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'les différentes activités qui composent '),
            TextSpan(
              text: 'son quotidien, ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: ' les entrainements, les soins apportés aux chiens et ',
            ),
            TextSpan(
              text: "pleins d'autres choses.",
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
