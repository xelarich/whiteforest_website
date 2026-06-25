import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class WelcomePart extends StatelessWidget {
  const WelcomePart({super.key});

  static const _body =
      'Située en Savoie, dans la vallée de la Maurienne au plus près de Foncouverte La Toussuire.\n'
      'White Forest vous offre la possibilité de vivre une expérience unique avec nos chiens de traineau !\n'
      'Pour tous les âges, activité plus ou moins physique, ou simplement une visite du chenil !\n'
      'En été, en hiver, et même au printemps ou en automne venez rencontrer nos merveilleux compagnons de vie.\n'
      'Sur la neige ou sur terre, Méléanne et son équipe vous accompagneront pour un moment inoubliable.';

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveBreakpoints.of(context).isDesktop;
    final hPadding = isDesktop ? 80.0 : 24.0;
    final vPadding = isDesktop ? 120.0 : 56.0;

    return Container(
      color: Colors.white,
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
                "L'équipe de White Forest\nvous souhaite la",
                style: TextStyle(
                  fontSize: 22,
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Bienvenue',
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
        Expanded(
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
          "L'équipe de White Forest vous souhaite la",
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        const Text(
          'Bienvenue',
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
