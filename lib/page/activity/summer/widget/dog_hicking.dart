import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whiteforest_website/component/indicator_difficulty/indicator_difficulty.dart';

class DogHicking extends StatelessWidget {
  const DogHicking(this._scrollController, {super.key});

  final AnchorScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return AnchorItemWrapper(
      controller: _scrollController,
      index: 2,
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
                  "assets/images/cani_raquette_1.jpeg",
                  width: 400,
                  height: 350,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Cani-randonnée demi-journée".toUpperCase(),
                            maxLines: 2,
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
                                Text("1H30 / 2H"),
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
                                text:
                                    "Randonnée à pied, tracté par un chien de traîneau à l’aide d’une ceinture et d’une ligne"
                                    " conçue spécialement pour l’activité !\n"),
                            TextSpan(
                                text:
                                    "Vous serez aidés par le chien pour arpenter nos"
                                    "montagnes, ponctués de pauses câlines et de moment de partages canins et humains !\n"),
                            TextSpan(
                                text:
                                    "Vous tomberez sous le charme de ses chiens extraordinaires que ce soit par leur"
                                    " volonté à l’exercice ou leur tendresse.\n"),
                            TextSpan(
                                text:
                                    "L’activité comprend une explication sur la pratique de la cani-randonnée puis une balade"
                                    " de 1h30 à 2 heures.\n"),
                          ],
                        ),
                        textAlign: TextAlign.justify,
                        maxLines: 15,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Les tarifs :',
                                style: TextStyle(fontSize: 24),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Container(
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                            color: Colors.brown.shade200,
                                          )),
                                      constraints: const BoxConstraints(
                                        minHeight: 75,
                                      ),
                                      child: const Text(
                                        "30€/ Adultes\n"
                                        "25€/ Enfants de -12ans",
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold,
                                          height: 1.4,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'La difficulté :',
                                style: TextStyle(fontSize: 24),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Padding(
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
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            constraints: const BoxConstraints(
                                                minWidth: 100),
                                            child: const Text(
                                              'La Toussuire',
                                              style: TextStyle(
                                                  fontFamily: 'Roboto'),
                                            ),
                                          ),
                                          const Row(
                                            children: [
                                              Text(
                                                'Champs eriscal',
                                                style: TextStyle(
                                                    fontFamily: 'Roboto'),
                                              ),

                                              IndicatorDifficulty(1),
                                            ],
                                          ),
                                          const Row(
                                            children: [
                                              Text(
                                                'Combe de l’ours',
                                                style: TextStyle(
                                                    fontFamily: 'Roboto'),
                                              ),

                                              IndicatorDifficulty(2),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        "30€/ Adultes\n"
                                        "25€/ Enfants de -12ans",
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold,
                                          height: 1.4,
                                        ),
                                      ),
                                      const Text(
                                        "30€/ Adultes\n"
                                        "25€/ Enfants de -12ans",
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold,
                                          height: 1.4,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(),
                            ],
                          ),
                        ],
                      ),
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
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                    Padding(
                      padding: EdgeInsets.only(left: 28.0),
                      child: Text(
                        "La Toussuire\n"
                        "Le Corbier\n"
                        "Saint-Sorlin d’Arves\n"
                        "Saint Jean d’Arves\n"
                        "Albiez-Montrond.",
                        style: TextStyle(fontFamily: 'Roboto', fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                    Padding(
                      padding: EdgeInsets.only(left: 28.0),
                      child: Text.rich(TextSpan(
                        style: TextStyle(fontFamily: 'Roboto', fontSize: 16),
                        children: [
                          TextSpan(text: "Les chiens sont adaptés à "),
                          TextSpan(
                              text: "votre condition physique ",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: " c’est une activité destinée aux "
                                  "familles mais aussi aux sportifs !\n"),
                          TextSpan(
                              text:
                                  "Accessible aux jeunes marcheurs mais aussi aux plus âgés !\n"),
                          TextSpan(
                              text: "Interdit aux femmes enceintes\n",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "Équipement : "),
                          TextSpan(
                              text: "Tenue de randonnée ",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                            text:
                                "(chaussures fermées obligatoire), bouteille d’eau !\n"
                                "Les bâtons de marches ne sont pas nécessaires.",
                          ),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
