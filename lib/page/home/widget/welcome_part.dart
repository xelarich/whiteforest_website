import 'package:flutter/material.dart';

class WelcomePart extends StatelessWidget {
  const WelcomePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 32),
      child: Column(
        children: [
          const Text(
            "L'équipe de White Forest vous souhaite la",
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const Text(
            'Bienvenue',
            style: TextStyle(fontSize: 38, fontFamily: 'WickedGrit'),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Container(
            width: 50,
            height: 3,
            decoration: BoxDecoration(
              color: const Color(0xFFD4A24E),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 24),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: const Text(
              'Située en Savoie, dans la vallée de la Maurienne au plus près de Foncouverte La Toussuire.\n'
              'White Forest vous offre la possibilité de vivre une expérience unique avec nos chiens de traineau !\n'
              'Pour tous les âges, activité plus ou moins physique, ou simplement une visite du chenil !\n'
              'En été, en hiver, et même au printemps ou en automne venez rencontrer nos merveilleux compagnons de vie.\n'
              'Sur la neige ou sur terre, Méléanne et son équipe vous accompagneront pour un moment inoubliable.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                height: 1.7,
                color: Colors.black87,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}