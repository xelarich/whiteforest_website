import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:responsive/responsive.dart';
import 'package:whiteforest_website/shared/utils.dart';

class DogRacketNight extends StatelessWidget {
  const DogRacketNight(this._scrollController, {super.key});

  final AnchorScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return AnchorItemWrapper(
      controller: _scrollController,
      index: 2,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                        'assets/images/winter/${getPathImage(context)}cani_raquette_nocturne.webp',
                        width: 400,
                        height: 450,
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
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
                                    'Cani-raquette nocturne'.toUpperCase(),
                                    maxLines: 2,
                                    style: const TextStyle(
                                      fontSize: 28,
                                      fontFamily: 'WickedGrit',
                                    ),
                                  ),
                                ),
                                FlexWidget(
                                  xs: 4,
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
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 8.0),
                                          child: Icon(
                                            LineAwesomeIcons.clock,
                                            size: 18,
                                          ),
                                        ),
                                        Text('5H'),
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
                          const Text.rich(
                            TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Roboto',
                              ),
                              children: [
                                TextSpan(
                                  text: 'Le ',
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
                                  text: ', venez découvrir la cani-raquette ! ',
                                ),
                                TextSpan(
                                  text:
                                      'Équipé d’une ceinture et relié à un chien de traineau, cette randonnée vous laissera ',
                                ),
                                TextSpan(
                                  text: 'un agréable souvenir.\n',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      'Vous créerez une relation toute particulière avec votre binôme à quatre pattes et le musher qui vous accompagne dans ',
                                ),
                                TextSpan(
                                  text: 'un paysage nocturne',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      '. Sans oublier la pause dîner en altitude ou dans la vallée de l’Arvan, ou vous vous ',
                                ),
                                TextSpan(
                                  text: 'régalerez ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      'après un bel effort en cani-raquette, un retour prévu aux alentours de 23h00. ',
                                ),
                                TextSpan(
                                  text:
                                      'Avec une dernière papouille à votre fidèle compagnon !\n',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.start,
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
                            margin: const EdgeInsets.only(top: 8),
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.brown.shade200,
                              ),
                            ),
                            child: const Text(
                              '80€/ personne\n'
                              'Le tarif comprends:\n'
                              'L’activité\n'
                              'La location du matériels\n'
                              'Le repas (apéritif, plat,dessert, café)',
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
                ),
              ),
              child: ResponsiveRow(
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
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 28.0),
                          child: Text(
                            'Le mardi soir à 17h30 au départ de La Toussuire\n'
                            'Le jeudi soir à 18h00 au départ de St Sorlin D’Arves.\n',
                            style:
                                TextStyle(fontFamily: 'Roboto', fontSize: 16),
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
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 28.0),
                          child: Text.rich(
                            TextSpan(
                              style:
                                  TextStyle(fontFamily: 'Roboto', fontSize: 16),
                              children: [
                                TextSpan(
                                  text: 'Nos partenaires :\n'
                                      'Le mardi soir avec les restaurants des Carlines\n'
                                      "Le jeudi soir avec l'Étable des prés plan\n"
                                      'Équipement : ',
                                ),
                                TextSpan(
                                  text: 'Tenue chaude ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      '(vêtements de ski, après ski, écharpe, gant), ',
                                ),
                                TextSpan(
                                  text: 'Raquette',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
