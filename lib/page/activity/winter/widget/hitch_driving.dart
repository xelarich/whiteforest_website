import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whiteforest_website/component/indicator_difficulty/indicator_difficulty.dart';

class HitchDriving extends StatelessWidget {
  const HitchDriving(this._scrollController, {super.key});

  final AnchorScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return AnchorItemWrapper(
      controller: _scrollController,
      index: 1,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Image
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.asset(
                  "assets/images/conduite_attelage_2.jpeg",
                  width: 650,
                  height: 500,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 24, left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //Titre et temps
                      Row(
                        children: [
                          Text(
                            "Conduite d'attelage".toUpperCase(),
                            style: const TextStyle(
                              fontSize: 40,
                              fontFamily: 'WickedGrit',
                            ),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 8.0),
                                  child: Icon(
                                    FontAwesomeIcons.clock,
                                    size: 18,
                                  ),
                                ),
                                Text("0,5 à 1 Journée"),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),

                      const Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                          ),
                          children: [
                            TextSpan(
                              text: "Le temps d’",
                            ),
                            TextSpan(
                              text: 'une demi-journée',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: ', ou d’',
                            ),
                            TextSpan(
                              text: 'une journée entière ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'devenez le musher de ',
                            ),
                            TextSpan(
                              text: 'votre propre attelage ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  "!\nAvec 3 ou 4 chiens selon les conditions d'enneigement, découvrez les magnifiques ",
                            ),
                            TextSpan(
                              text: 'paysages de la Maurienne.\n',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                                text:
                                    "Accompagné d’un musher professionnel pour vous encadrer durant votre pratique, et par petit groupe de 6 personnes maximum, vous apprendrez à"),
                            TextSpan(
                              text: " diriger et contrôler votre traîneau ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: "ainsi que "),
                            TextSpan(
                              text: "vos chiens.\n",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                                text:
                                    "De bonnes conditions sportives sont requises pour pratiquer la conduite d’attelage!\n"),
                          ],
                        ),
                        textAlign: TextAlign.justify,
                        maxLines: 8,
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      const Text(
                        'Les formules :',
                        style: TextStyle(fontSize: 24),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors.brown.shade200,
                                    )),
                                constraints: const BoxConstraints(
                                  minHeight: 75,
                                ),
                                child: const Text(
                                  "Demi-journée : 120€/ personne",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                    height: 1.4,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors.brown.shade200,
                                    )),
                                constraints: const BoxConstraints(
                                  minHeight: 75,
                                ),
                                child: const Text(
                                  "Journée: 240€/ personne\n"
                                  "(le repas du midi n’est pas compris dans le tarif)",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                    height: 1.4,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'La difficulté :',
                            style: TextStyle(fontSize: 24),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      constraints:
                                          const BoxConstraints(minWidth: 100),
                                      child: const Text(
                                        'Demi-journée',
                                        style: TextStyle(fontFamily: 'Roboto'),
                                      ),
                                    ),
                                    const IndicatorDifficulty(2),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      constraints:
                                          const BoxConstraints(minWidth: 100),
                                      child: const Text(
                                        'Journée',
                                        style: TextStyle(fontFamily: 'Roboto'),
                                      ),
                                    ),
                                    const IndicatorDifficulty(3),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 4),
                child: Icon(Icons.info_outline),
              ),
              Text(
                'Lieu de pratique',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 28.0),
            child: Text(
              "En demi-journée: Le Corbier / La Toussuire/ Saint Sorlin d’Arves\n"
              "En journée: Saint Sorlin d’Arves",
              style: TextStyle(fontFamily: 'Roboto', fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 4),
                child: Icon(Icons.info_outline),
              ),
              Text(
                'Informations et recommandations',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 28.0),
            child: Text.rich(TextSpan(
              style: TextStyle(fontFamily: 'Roboto', fontSize: 16),
              children: [
                TextSpan(
                  text:
                      "Équipement : chaussure type après ski, pantalon et veste de neige (imperméable),\n"
                      "gants, bonnet, lunette ou masque. ",
                ),
              ],
            )),
          ),
        ]),
      ),
    );
  }
}
