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
      color: Colors.grey.shade900,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 16),
        child: Row(
          children: [
            Expanded(
              child: Container(
                  color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('PLAN DU SITE',style: TextStyle(fontSize: 18),),
                      Text('Accueil'),
                      Text('Activité'),
                      Text('Le chenil'),
                      Text("L'équipe"),
                      Text('Contact'),
                      Text('Réserver'),
                    ],
                  )),
            ),
            Expanded(
              child: Container(
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                    ],
                  )),
            ),
            Expanded(
              child: Container(
                  color: Colors.green,
                  child: Column(
                    children: [
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                      Text('data'),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
