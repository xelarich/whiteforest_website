import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:responsive/responsive.dart';

class CaniHikeDays extends StatelessWidget {
  const CaniHikeDays(this._scrollController, {super.key});

  final AnchorScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return AnchorItemWrapper(
      controller: _scrollController,
      index: 0,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            width: double.infinity,
            child: ResponsiveRow(
              alignment: WrapAlignment.spaceAround,
              children: [
                //Image
                FlexWidget(
                  sm: 12,
                  md: 12,
                  lg: 12,
                  xl: 5,
                  xxl: 5,
                  xxxl: 5,
                  child: ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(16)),
                    child: Image.asset(
                      "assets/images/summer/chalet_resize.webp",
                      width: 400,
                      height: 450,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                FlexWidget(
                  sm: 12,
                  md: 12,
                  lg: 12,
                  xl: 6,
                  xxl: 6,
                  xxxl: 6,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //Titre et temps
                        SizedBox(
                          width: double.infinity,
                          child: ResponsiveRow(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            alignment: WrapAlignment.spaceBetween,
                            children: [
                              FlexWidget(
                                xs: 10,
                                sm: 10,
                                md: 9,
                                lg: 9,
                                xl: 9,
                                xxl: 9,
                                xxxl: 9,
                                child: Text.rich(
                                  TextSpan(
                                    text: "Cani-randonnée deux jours"
                                        .toUpperCase(),
                                    style: const TextStyle(
                                      fontSize: 28,
                                      fontFamily: 'WickedGrit',
                                    ),
                                  ),
                                  maxLines: 2,
                                ),
                              ),
                              FlexWidget(
                                xs: 4,
                                sm: 2,
                                md: 2,
                                lg: 2,
                                xl: 2,
                                xxl: 2,
                                xxxl: 2,
                                child: Container(
                                  width: double.infinity,
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: Icon(
                                          LineAwesomeIcons.clock,
                                          size: 18,
                                        ),
                                      ),
                                      Text("2 jours"),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
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
                              TextSpan(text: "C’est "),
                              TextSpan(
                                text: "la nouveauté ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                  text: "de cette saison ! Partez à "
                                      "l’aventure aux pieds des "),
                              TextSpan(
                                text: "Aiguilles d’Arves.\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: "Toujours en cani-randonnée, "),
                              TextSpan(
                                text: "parcourez un paysage",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                  text:
                                      ", entre terre d’alpage, rivière, et roche. "
                                      "Laissez vous guider par ces trois géants de pierre pour une randonnée d’environ "
                                      "3H.\n"),
                              TextSpan(
                                text: "Chiens et humains ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                  text: "arpenteront les sentiers jusqu’au "),
                              TextSpan(
                                text: "chalet Perron ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                  text:
                                      "ou Patricia nous recevra pour un repas savoyard et une nuit en refuge. "),
                              TextSpan(
                                text: "Histoire, partage, et vue imprenable ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: "sont au rendez vous !\n"),
                              TextSpan(
                                  text:
                                      "Un petit déjeuner généreux et c’est repartie pour un retour tout aussi sympathique.\n"),
                            ],
                          ),
                          textAlign: TextAlign.justify,
                          maxLines: 15,
                        ),
                        const Text(
                          'Les tarifs :',
                          style: TextStyle(fontSize: 24),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.brown.shade200,
                              )),
                          child: const Text(
                            "165€/ Personnes",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.brown.shade200,
                )),
            child: ResponsiveRow(
              alignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.start,
              children: [
                FlexWidget(
                  xs: 12,
                  sm: 12,
                  md: 12,
                  child: const Column(
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
                          'Le Chalmieu\n',
                          style: TextStyle(fontFamily: 'Roboto', fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                FlexWidget(
                  xs: 12,
                  sm: 12,
                  md: 12,
                  lg: 8,
                  xl: 8,
                  xxl: 8,
                  xxxl: 8,
                  child: const Column(
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
                            TextSpan(text: "Équipement : "),
                            TextSpan(
                              text: "Tenue de randonnée ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                                text: "(chaussure de randonnée obligatoire), "),
                            TextSpan(
                              text: "imperméable",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                                text:
                                    ", affaire chaude pour le soir, sac à dos, bouteille d’eau."),
                          ],
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
