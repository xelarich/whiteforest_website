import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whiteforest_website/component/header/header_carousel.dart';
import 'package:whiteforest_website/component/ramdon_grid/random_photo.dart';
import 'package:whiteforest_website/shared/image_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        HeaderCarousel(),
        Padding(
          padding: const EdgeInsets.all(32),
          child: Column(children: [
            const Text(
              "L'équipe de White Forest vous souhaite la",
              style: TextStyle(fontSize: 32),
            ),
            const SizedBox(
              height: 16,
            ),
            Text('Bienvenue'.toUpperCase(),
                style: const TextStyle(fontSize: 48, fontFamily: 'WickedGrit')),
            Padding(
              padding: const EdgeInsets.all(32),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      style: TextStyle(fontSize: 24, height: 1.5, color: Colors.black),
                      children: [
                        TextSpan(
                            text:
                                "Située en Savoie, dans la vallée de la Maurienne au plus près de Foncouverte La Toussuire.\n"),
                        TextSpan(
                            text:
                                "White Forest vous offre la possibilité de vivre une expérience unique avec nos chiens de traineau !\n"),
                        TextSpan(
                            text:
                                "Pour tous les âges, activité plus ou moins physique, ou simplement une visite du chenil !\n"),
                        TextSpan(
                            text:
                                "En été comme en hiver et même au printemps ou en automne venez rencontrer nos merveilleux compagnons de vie.\n"),
                        TextSpan(
                            text:
                                "Sur la neige ou sur terre, Mel, Tom et son équipe vous accompagneront pour un moment inoubliable.\n"),
                      ])),
            )
          ]),
        ),
        SizedBox(
          height: screenSize.height * 0.60,
          width: screenSize.width,
          child: Image.asset(
            'assets/images/cover.jpg',
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32),
          child: Column(children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Expanded(
                  flex: 4,
                  child: Text(
                    "Vivez une expérience inoubliable avec",
                    style: TextStyle(
                      fontSize: 32,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(flex: 1, child: SizedBox())
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Expanded(flex: 1, child: SizedBox()),
                Expanded(
                  flex: 4,
                  child: Text(
                    'Nos chiens ...'.toUpperCase(),
                    style:
                        const TextStyle(fontSize: 48, fontFamily: 'WickedGrit'),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: RichText(
                  textAlign: TextAlign.justify,
                  text: const TextSpan(
                      style: TextStyle(fontSize: 24, height: 1.5),
                      children: [
                        TextSpan(
                            text:
                                "Venez découvrir nos 80 chiens de traîneaux à travers différentes activités toute l’année !\n"),
                        TextSpan(
                            text:
                                "Nos chiens viennent de différents horizons, la plupart ont été abandonnés et quelques-uns sont nés à la maison. Ils viennent parfois de la SPA, de 30 millions d’amis, de particuliers et parfois même d’autres structures de chiens de traineaux.\n"),
                        TextSpan(
                            text:
                                "L’objectif est de leur offrir une vie en adéquation avec leurs besoins et leurs envies. Après une intégration avec le reste du groupe, ils sont avec nous jusqu’à la fin de leur vie.\n"),
                        TextSpan(
                            text:
                                "Les sorties sont adaptées à chaque chien ! Ils sont tous friands de vos caresses et de sorties avec vous !\n"),
                        TextSpan(
                            text:
                                "Vous aurez l’occasion de découvrir différentes races de chiens de traîneaux, des plus anciennes aux plus communes aujourd’hui.\n"),
                        TextSpan(
                            text:
                                "Tout ceci dans un cadre magnifique au milieu de nos montagnes, que ce soit en balade ou directement chez nous dans un parc créé pour nos chiens face aux Aiguilles d’Arves !"),
                      ])),
            )
          ]),
        ),
        //RandomPhotoGrid(),
        SizedBox(
          height: screenSize.height * 0.60,
          width: screenSize.width,
          child: Image.asset(
            'assets/images/cover.jpg',
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32),
          child: Column(children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Expanded(
                  flex: 4,
                  child: Text(
                    "Et venez à la rencontre de notre équipe de",
                    style: TextStyle(
                      fontSize: 32,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(flex: 1, child: SizedBox()),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Expanded(flex: 1, child: SizedBox()),
                Expanded(
                  flex: 4,
                  child: Text(
                    'Mushers'.toUpperCase(),
                    style:
                        const TextStyle(fontSize: 48, fontFamily: 'WickedGrit'),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 8,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16))),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/profil_mel.jpeg',
                          height: 300,
                          fit: BoxFit.fill,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Meleanne',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 8,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16))),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/blank_profile.png',
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomCenter,
                          width: 300,
                          height: 300,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Thomas',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: SvgPicture.asset(
            'assets/icons/forest_line.svg',
            width: screenSize.width,
            fit: BoxFit.fitWidth,
            color: Colors.white,
          ),
        ),
        Container(
          color: Colors.white,
          width: double.maxFinite,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            const Text(
              'Vous êtes plutôt',
              style: TextStyle(
                fontSize: 48,
              ),
              textAlign: TextAlign.justify,
            ),
            const Text.rich(TextSpan(
                style: TextStyle(
                  fontSize: 48,
                ),
                children: [
                  TextSpan(
                      text: 'Été', style: TextStyle(fontFamily: 'WickedGrit')),
                  TextSpan(
                    text: ' ou ',
                  ),
                  TextSpan(
                      text: 'Hiver',
                      style: TextStyle(fontFamily: 'WickedGrit')),
                  TextSpan(
                    text: ' ?',
                  ),
                ])),
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                'Nos activités hivernales',
                style: TextStyle(fontSize: 36),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ImageText(
                  'assets/images/img1.jpeg',
                  text: 'Cani-rando',
                ),
                ImageText('assets/images/img2.jpeg', text: 'Raid'),
                ImageText('assets/images/img3.jpeg', text: 'Cani-rando'),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                'Nos activités estivales',
                style: TextStyle(fontSize: 36),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ImageText(
                  'assets/images/img1.jpeg',
                  text: 'Cani-rando',
                ),
                ImageText('assets/images/img2.jpeg', text: 'Raid'),
                ImageText('assets/images/img3.jpeg', text: 'Cani-rando'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.brown,
                      backgroundColor: Colors.white,
                      elevation: 8,
                      side: const BorderSide(
                        width: 2,
                      )),
                  onPressed: () {},
                  child: const Text(
                    'Décrouvez toutes nos activités',
                    style: TextStyle(fontSize: 32, color: Colors.black),
                  )),
            ),
          ]),
        ),
      ],
    );
  }
}
