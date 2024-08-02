import 'dart:ui';

import 'package:flutter/material.dart';

class WelcomePart extends StatelessWidget {
  const WelcomePart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "L'équipe de White Forest vous souhaite la",
              style: TextStyle(fontSize: 28),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Text('Bienvenue',
                style: TextStyle(fontSize: 38, fontFamily: 'WickedGrit')),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  "Située en Savoie, dans la vallée de la Maurienne au plus près de Foncouverte La Toussuire.\n"
                  "White Forest vous offre la possibilité de vivre une expérience unique avec nos chiens de traineau !\n"
                  "Pour tous les âges, activité plus ou moins physique, ou simplement une visite du chenil !\n"
                  "En été, en hiver, et même au printemps ou en automne venez rencontrer nos merveilleux compagnons de vie.\n"
                  "Sur la neige ou sur terre, Méléanne et son équipe vous accompagneront pour un moment inoubliable.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      height: 1.5,
                      color: Colors.black,
                      fontFamily: 'Roboto'),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
