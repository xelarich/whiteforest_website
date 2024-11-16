import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:responsive/flex_widget.dart';
import 'package:responsive/responsive_row.dart';
import 'package:whiteforest_website/shared/utils.dart';

class HitchDrivingGroup extends StatelessWidget {
  const HitchDrivingGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                      'assets/images/winter/${getPathImage(context)}conduite_attelage_groupe.webp',
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
                                  "Conduite d'attelage : Découverte ou Expert"
                                      .toUpperCase(),
                                  maxLines: 5,
                                  style: const TextStyle(
                                    fontSize: 28,
                                    fontFamily: 'WickedGrit',
                                  ),
                                ),
                              ),
                              FlexWidget(
                                xs: 6,
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
                                      Text('1H / 2H'),
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
                                text:
                                    'Envie de piloter un traineau, vous êtes sportif et dynamique, ',
                              ),
                              TextSpan(
                                text: 'vous aimez les animaux.\n',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'Vivez en groupe une ',
                              ),
                              TextSpan(
                                text: 'expérience unique, ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "accompagné d'une ",
                              ),
                              TextSpan(
                                text: 'monitrice diplômée.\n',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "Par petit groupe de 6 vous arpentez la montagne et vous vous initiez à la ",
                              ),
                              TextSpan(
                                text: "conduite d'attelage\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "Vous apprendrez à ",
                              ),
                              TextSpan(
                                text: 'diriger et contrôler votre traineau ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: 'ainsi que '),
                              TextSpan(
                                text: 'vos chiens.\n\n',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: 'Conduite "'),
                              TextSpan(
                                text: 'Découverte',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    '" : Activité en co-pilotage ou en solo sur 1H.\n',
                              ),
                              TextSpan(text: 'Conduite "'),
                              TextSpan(
                                text: 'Expert',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    '" : Activité uniquement en solo sur 2H.\n',
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
                          'Les tarifs groupes ( + de 15 personnes ) :',
                          style: TextStyle(fontSize: 24),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ResponsiveRow(
                            alignment: WrapAlignment.spaceBetween,
                            crossAxisAlignment: WrapCrossAlignment.start,
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
                                    ),
                                  ),
                                  child: const Text(
                                    'Conduite "Découverte":\n'
                                    'En co-pilotage: 45€/ personne\n'
                                    'En solo: 65€/ personne',
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
                                    ),
                                  ),
                                  child: const Text(
                                    'Conduite "Expert":\n'
                                    'En solo: 110€/ personne',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      height: 1.4,
                                    ),
                                  ),
                                ),
                              ),
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
              ),
            ),
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
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 28.0),
                        child: Text(
                          //TODO Verify this
                          'Le Corbier\n'
                          'La Toussuire\n'
                          'Saint-Sorlin-d’Arves\n',
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
                                text: 'Équipement : ',
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
                                text: 'lunette ou masque.\n',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'Casque ',
                              ),
                              TextSpan(
                                text: 'obligatoire ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: '(non fourni).',
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
    );
  }
}
