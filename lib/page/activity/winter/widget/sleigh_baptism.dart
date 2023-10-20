import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whiteforest_website/component/indicator_difficulty/indicator_difficulty.dart';

class SleighBaptism extends StatelessWidget {
  const SleighBaptism(this._scrollController, {super.key});

  final AnchorScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return AnchorItemWrapper(
      controller: _scrollController,
      index: 0,
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
                  "assets/images/balade_traineau_2.jpg",
                  width: 650,
                  height: 500,
                  fit: BoxFit.cover,
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
                            "Bapteme Traineau".toUpperCase(),
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
                                Text("30 Min à 1 H"),
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
                              text: "Assis dans le traineau,",
                            ),
                            TextSpan(
                              text: ' guidé par 10 chiens et leur musher',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: ', venez vivre',
                            ),
                            TextSpan(
                              text: ' un moment de partage ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  "avec nos chiens d'explication et de sensibilisation sur les chiens nordiques et notre métier.\n",
                            ),
                            TextSpan(
                                text:
                                    "Profitez des différents paysages sur des pistes variées et ensoleillées."),
                            TextSpan(text: " Nous serons ravis de"),
                            TextSpan(
                              text: " partager durant 30 minutes",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: " ou"),
                            TextSpan(
                              text: " 1 heure une expérience inoubliable",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: " et unique dans nos montagnes !\n"),
                            TextSpan(
                              text: "Activité familiale par excellence !",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
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
                                child: const Text(
                                  "30 min : 110€\n"
                                  "Traineau pour 1 à 2 personnes\n"
                                  "Supplément / personne\n"
                                  "Enfant (2 ans à 6 ans) : 20€\n"
                                  "Jeune (7 à 12 ans) : 40€\n"
                                  "Adulte : 55€",
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
                                child: const Text(
                                  "1H : 155€\n"
                                  "Traineau pour 1 à 2 personnes\n"
                                  "Supplément / personne\n"
                                  "Enfant (2 ans à 6 ans) : 40€\n"
                                  "Jeune (7 à 12 ans) : 60€\n"
                                  "Adulte : 75€",
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
                      const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'La difficulté :',
                            style: TextStyle(fontSize: 24),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          IndicatorDifficulty(3),
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
              "La Toussuire, Saint-Sorlin d'Arves, Albiez-Montrond, Saint Jean d'Arves (uniquement 30 min)",
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
                    text: "ATTENTION : 180kg max par traîneau.\n"
                        "Accessible au plus grand nombre !\n"),
                TextSpan(
                    text: "Interdit aux femmes enceintes ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: "et "),
                TextSpan(
                    text: "déconseillés aux personnes fragiles du dos.\n",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: "Équipement : ",
                ),
                TextSpan(
                    text: "Tenue chaude ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: "(vêtements de ski, après ski, écharpe, gant)"),
              ],
            )),
          ),
        ]),
      ),
    );
  }
}
