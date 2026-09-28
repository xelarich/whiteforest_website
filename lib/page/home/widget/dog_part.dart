import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DogPart extends StatelessWidget {
  const DogPart({super.key});

  static const _body =
      "Venez découvrir nos 35 chiens de traineau à travers différentes activités toute l'année !\n"
      'Nos chiens viennent de différents horizons, la plupart ont été abandonnés et quelques-uns sont nés à la maison.\n'
      "L'objectif est de leur offrir une vie en adéquation avec leurs besoins et leurs envies.\n"
      'Nous adaptons les chiens aux personnes en fonction de chaque sortie et activités.\n'
      'Méléanne vit avec eux au quotidien, et leur accorde une importance toute particulière.\n'
      'Chacun avec sa personnalité contribue à la grande famille de White Forest.\n'
      "Vous aurez l'occasion de découvrir différentes races de chiens de traineau.\n"
      'Ils seront heureux de vous accompagner durant une canirando, un baptême ou simplement une visite.\n'
      "Tout ceci dans un cadre magnifique, face aux Aiguilles d'Arves !";

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveBreakpoints.of(context).isDesktop;
    final hPadding = isDesktop ? 80.0 : 24.0;
    final vPadding = isDesktop ? 120.0 : 56.0;

    return Container(
      color: const Color(0xFFF5F0EB),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: vPadding, horizontal: hPadding),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: isDesktop ? _buildDesktop() : _buildMobile(),
        ),
      ),
    );
  }

  Widget _buildDesktop() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Vivez une expérience\ninoubliable avec',
                style: TextStyle(
                  fontSize: 22,
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Nos chiens',
                style: TextStyle(
                  fontSize: 76,
                  fontFamily: 'WickedGrit',
                  height: 1.0,
                ),
              ),
              const SizedBox(height: 24),
              Container(
                width: 64,
                height: 3,
                decoration: BoxDecoration(
                  color: const Color(0xFFD4A24E),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 80),
        const Expanded(
          flex: 7,
          child: Text(
            _body,
            style: TextStyle(
              fontSize: 17,
              height: 1.85,
              color: Colors.black87,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMobile() {
    return Column(
      children: [
        const Text(
          'Vivez une expérience inoubliable avec',
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        const Text(
          'Nos chiens',
          style: TextStyle(fontSize: 44, fontFamily: 'WickedGrit'),
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
          constraints: const BoxConstraints(maxWidth: 600),
          child: Text(
            _body,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              height: 1.7,
              color: Colors.black87,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}
