import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:responsive/responsive.dart';
import 'package:whiteforest_website/shared/utils.dart';

class CaniHikeGroup extends StatelessWidget {
  const CaniHikeGroup({super.key});

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
                      'assets/images/summer/${getPathImage(context)}cani_rando.webp',
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
                                xs: 12,
                                sm: 12,
                                md: 9,
                                lg: 9,
                                xl: 9,
                                xxl: 9,
                                xxxl: 9,
                                child: Text(
                                  'Cani-randonnée initiation'.toUpperCase(),
                                  style: const TextStyle(
                                    fontSize: 28,
                                    fontFamily: 'WickedGrit',
                                  ),
                                  maxLines: 2,
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
                                      Text('1H30 / 2H'),
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
                                text: 'Randonnée à pied',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    ', tracté par un chien de traineau à l’aide '
                                    'd’une ceinture et d’une ligne '
                                    'conçue spécialement pour l’activité !\n',
                              ),
                              TextSpan(
                                text:
                                    'Vous serez aidés par le chien pour arpenter nos '
                                    'montagnes, ponctués de ',
                              ),
                              TextSpan(
                                text: 'pauses câlines ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: 'et de '),
                              TextSpan(
                                text: 'moment de partages canins et humains ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    '!\nVous tomberez sous le charme de ses chiens ',
                              ),
                              TextSpan(
                                text: 'extraordinaires ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    'que ce soit par leur volonté à l’exercice ou leur tendresse.\n',
                              ),
                              TextSpan(
                                text:
                                    'L’activité comprend une explication sur la pratique de la cani-randonnée puis une balade '
                                    'de 1h30 à 2 heures.\n',
                              ),
                            ],
                          ),
                          textAlign: TextAlign.start,
                          maxLines: 15,
                        ),
                        const Text(
                          'Les tarifs groupes ( + de 15 personnes) :',
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
                            ),
                          ),
                          child: const Text(
                            '25€/ Adulte\n'
                            '19€/ Enfant de -12ans',
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
                          'La Toussuire\n'
                          'Le Corbier\n'
                          'Saint-Sorlin d’Arves\n'
                          'Saint Jean d’Arves\n'
                          'Albiez-Montrond.\n',
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
                              TextSpan(text: 'Les chiens sont adaptés à '),
                              TextSpan(
                                text: 'votre condition physique.\n',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'C’est une activité destinée aux '
                                    'familles mais aussi aux sportifs.\n',
                              ),
                              TextSpan(
                                text: 'Accessible ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    'aux jeunes marcheurs mais aussi aux plus âgés !\n',
                              ),
                              TextSpan(
                                text: 'Interdit aux femmes enceintes.\n',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: 'Équipement : '),
                              TextSpan(
                                text: 'Tenue de randonnée ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    '(chaussures fermées obligatoire), bouteille d’eau.\n'
                                    'Les bâtons de marches ne sont pas nécessaires.',
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
