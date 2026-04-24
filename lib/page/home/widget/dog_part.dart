import 'package:flutter/material.dart';

class DogPart extends StatelessWidget {
  const DogPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF5F0EB),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 32),
      child: Column(
        children: [
          const Text(
            'Vivez une expérience inoubliable avec',
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const Text(
            'Nos chiens',
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
              "Venez découvrir nos 80 chiens de traineau à travers différentes activités toute l'année !\n"
              "Nos chiens viennent de différents horizons, la plupart ont été abandonnés et quelques-uns sont nés à la maison.\n"
              "L'objectif est de leur offrir une vie en adéquation avec leurs besoins et leurs envies.\n"
              'Nous adaptons les chiens aux personnes en fonction de chaque sortie et activités.\n'
              'Méléanne vit avec eux au quotidien, et leur accorde une importance toute particulière.\n'
              'Chacun avec sa personnalité contribue à la grande famille de White Forest.\n'
              'Vous aurez l\'occasion de découvrir différentes races de chiens de traineau.\n'
              "Ils seront heureux de vous accompagner durant une canirando, un baptême ou simplement une visite.\n"
              "Tout ceci dans un cadre magnifique, face aux Aiguilles d'Arves !",
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