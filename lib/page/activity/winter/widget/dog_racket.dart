import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whiteforest_website/component/indicator_difficulty/indicator_difficulty.dart';

class DogRacket extends StatelessWidget {
  const DogRacket(this._scrollController, {Key? key}) : super(key: key);

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
                            "Cani-raquette nocturne".toUpperCase(),
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
                                Text("5H"),
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
                              text: "Le ",
                            ),
                            TextSpan(
                              text: 'mardi soir ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'ou le ',
                            ),
                            TextSpan(
                              text: 'jeudi soir',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: ', venez découvrir la cani-raquette! ',
                            ),
                            TextSpan(
                              text:
                                  'Équipé d’une ceinture et relié à un chien de traîneau, cette randonnée vous laissera ',
                            ),
                            TextSpan(
                              text: "un agréable souvenir",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  '.\nVous créerez une relation toute particulière avec votre binôme à quatre pattes et le musher qui vous accompagne dans ',
                            ),
                            TextSpan(
                              text: "un paysage nocturne",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                                text:
                                    ". Sans oublier la pause dîner en altitude ou dans la vallée de l’Arvan, ou vous vous "),
                            TextSpan(
                              text: "régalerez ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                                text:
                                    "après un bel effort en cani-raquette, un retour prévu aux alentours de 23h00.\n"),
                            TextSpan(
                              text:
                                  "Avec une dernière papouille à votre fidèle compagnon!",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.justify,
                        maxLines: 8,
                      ),
                      const SizedBox(
                        height: 24,
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
                                  "80€/ personne\n"
                                  "Le tarif comprends:\n"
                                  "L’activité\n"
                                  "La location du matériels\n"
                                  "Le repas (apéritif, plat,dessert, café)",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                    height: 1.4,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Expanded(child: SizedBox()),
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
                                  children: [
                                    Container(
                                      constraints:
                                          const BoxConstraints(minWidth: 100),
                                      child: const Text(
                                        'La Toussuire',
                                        style: TextStyle(fontFamily: 'Roboto'),
                                      ),
                                    ),
                                    const IndicatorDifficulty(3),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      constraints:
                                          const BoxConstraints(minWidth: 100),
                                      child: const Text(
                                        'St Sorlin',
                                        style: TextStyle(fontFamily: 'Roboto'),
                                      ),
                                    ),
                                    const IndicatorDifficulty(2),
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
              "Le mardi soir à 17h30 au départ de La Toussuire\n"
              "Le jeudi soir à 18h00 au départ de St Sorlin D’Arves.",
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
                    text: "Nos partenaires :\n"
                        "Le mardi soir avec les restaurants des Carlines\n"
                        "Le jeudi soir avec l'Étable des prés plan\n"
                        "Équipement : "),
                TextSpan(
                    text: "Tenue chaude ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: "(vêtements de ski, après ski, écharpe, gant), ",
                ),
                TextSpan(
                    text: "Raquette",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            )),
          ),
        ]),
      ),
    );
  }
}
