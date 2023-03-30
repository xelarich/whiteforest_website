import 'package:flutter/material.dart';
import 'package:whiteforest_website/component/footer/footer_navigation_button.dart';

class FooterContent extends StatelessWidget {
  const FooterContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> navigationList = [
      'Accueil',
      'Activités',
      'Contact',
      'Réservation'
    ];
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.red,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              FooterNavigationButton(navigationList[0]),
              FooterNavigationButton(navigationList[0]),
              FooterNavigationButton(navigationList[0]),
              FooterNavigationButton(navigationList[0]),
            ],
          ),
        ),
      ),
    );
  }
}
