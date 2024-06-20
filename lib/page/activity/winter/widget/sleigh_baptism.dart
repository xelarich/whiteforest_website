import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:responsive/flex_widget.dart';
import 'package:responsive/responsive_row.dart';
import 'package:whiteforest_website/shared/utils.dart';

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
          SizedBox(
            width: double.infinity,
            child: ResponsiveRow(
              alignment: WrapAlignment.spaceAround,
              children: [
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
                      "assets/images/winter/${getPathImage(context)}bapteme_traineau.webp",
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
                    padding: const EdgeInsets.symmetric(vertical: 12),
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
                                child: Text(
                                  "Bapteme traineau".toUpperCase(),
                                  maxLines: 2,
                                  style: const TextStyle(
                                    fontSize: 28,
                                    fontFamily: 'WickedGrit',
                                  ),
                                ),
                              ),
                              FlexWidget(
                                xs: 5,
                                sm: 3,
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
                                      Text("30 Min à 1 H"),
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
                              TextSpan(
                                text: "Assis dans le traineau, ",
                              ),
                              TextSpan(
                                text: 'guidé par 10 chiens et leur musher',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: ', venez vivre ',
                              ),
                              TextSpan(
                                text: 'un moment de partage ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "avec nos chiens d'explication et de sensibilisation sur les chiens nordiques et notre métier.\n",
                              ),
                              TextSpan(
                                  text:
                                      "Profitez des différents paysages sur des pistes variées et ensoleillées. "),
                              TextSpan(text: "Nous serons ravis de "),
                              TextSpan(
                                text: "partager durant 30 minutes ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: "ou "),
                              TextSpan(
                                text: "1 heure une expérience inoubliable ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                  text: "et unique dans nos montagnes !\n"),
                              TextSpan(
                                text: "Activité familiale par excellence !",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.start,
                          maxLines: 15,
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        const Text(
                          'Les tarifs :',
                          style: TextStyle(fontSize: 24),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ResponsiveRow(
                            alignment: WrapAlignment.spaceBetween,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              FlexWidget(
                                xs: 12,
                                sm: 5,
                                md: 5,
                                lg: 5,
                                xl: 5,
                                xxl: 5,
                                xxxl: 5,
                                child: Container(
                                  margin: const EdgeInsets.only(top: 8),
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
                              FlexWidget(
                                xs: 12,
                                sm: 5,
                                md: 5,
                                lg: 5,
                                xl: 5,
                                xxl: 5,
                                xxxl: 5,
                                child: Container(
                                  margin: const EdgeInsets.only(top: 8),
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
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 32,
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
                          "La Toussuire, Saint-Sorlin d'Arves, Albiez-Montrond, Saint Jean d'Arves (uniquement 30 min)",
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
                          Flexible(
                            child: Text(
                              'Informations et recommandations',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      Padding(
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
                                text:
                                    "déconseillés aux personnes fragiles du dos.\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                              text: "Équipement : ",
                            ),
                            TextSpan(
                                text: "Tenue chaude ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "(vêtements de ski, après ski, écharpe, gant)"),
                          ],
                        )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
