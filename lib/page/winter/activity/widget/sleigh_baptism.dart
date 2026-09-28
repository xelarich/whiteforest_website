import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:whiteforest_website/shared/activity_section.dart';
import 'package:whiteforest_website/shared/utils.dart';

class SleighBaptism extends StatelessWidget {
  const SleighBaptism(this._scrollController, {super.key});

  final AnchorScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return ActivitySection(
      scrollController: _scrollController,
      index: 0,
      title: 'Baptême traineau',
      duration: '30 min',
      imagePath:
          'assets/images/winter/${getPathImage(context)}bapteme_traineau.webp',
      imageAlignment: Alignment.bottomRight,
      description: const Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 16, fontFamily: 'Roboto', height: 1.6),
          children: [
            TextSpan(text: 'Assis dans le traineau, '),
            TextSpan(
              text: 'guidé par 10 chiens et leur musher',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: ', venez vivre '),
            TextSpan(
              text: 'un moment de partage ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  "avec nos chiens, d'explication de notre métier et de sensibilisation sur les chiens nordiques.\n",
            ),
            TextSpan(
              text:
                  'Profitez des différents paysages sur des pistes variées et ensoleillées.\n',
            ),
            TextSpan(
              text:
                  'Nous serons ravis de partager durant 30 minutes une expérience ',
            ),
            TextSpan(
              text: 'inoubliable et unique ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: 'dans nos montagnes !\n'),
            TextSpan(
              text: 'Activité familiale par excellence !',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      prices: const [
        PriceCard(
          text: '30 min : 160€\n'
              '25 min de balade + 5 min de présentation\n'
              'Traineau pour 1 à 2 personnes',
        ),
      ],
      infos: const [
        InfoCard(
          title: 'Lieu de pratique',
          icon: Icons.location_on_outlined,
          content: Text(
            'La Toussuire',
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
                      '160kg max par traineau.\n',
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