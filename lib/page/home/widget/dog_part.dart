import 'package:flutter/material.dart';

class DogPart extends StatelessWidget {
  const DogPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "Vivez une expérience inoubliable avec",
              style: TextStyle(
                fontSize: 28,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'Nos chiens',
              style: TextStyle(fontSize: 38, fontFamily: 'WickedGrit'),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "Venez découvrir nos 80 chiens de traîneaux à travers différentes activités toute l’année !\n"
                    "Nos chiens viennent de différents horizons, la plupart ont été abandonnés et quelques-uns sont nés à la maison.\n"
                    "L’objectif est de leur offrir une vie en adéquation avec leurs besoins et leurs envies.\n"
                    "Les sorties sont adaptées à chaque chien ! Ils sont tous friands de vos caresses et de sorties avec vous !\n"
                    "Vous aurez l’occasion de découvrir différentes races de chiens de traîneaux\n"
                    "Tout ceci dans un cadre magnifique, face aux Aiguilles d’Arves !",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 20,
                        height: 1.5,
                        color: Colors.black,
                        fontFamily: 'Roboto'),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
