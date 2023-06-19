import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whiteforest_website/page/activity/winter/activity_winter_page.dart';
import 'package:whiteforest_website/page/home/widget/card_home.dart';

class ActivityPart extends StatelessWidget {
  const ActivityPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Vous êtes plutôt',
          style: TextStyle(
            fontSize: 28,
          ),
          textAlign: TextAlign.justify,
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Été ou Hiver ?',
          style: TextStyle(fontSize: 38, fontFamily: 'WickedGrit'),
          textAlign: TextAlign.justify,
        ),
      ),
      const Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 48, vertical: 16),
          child: Text(
            'Nos activités estivals :',
            style: TextStyle(fontSize: 28, fontFamily: 'Roboto'),
            textAlign: TextAlign.start,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 32),
        child: Row(
          children: [
            CardHome(
              'Cani-randonnée',
              "Randonnée à pied, tracté par un chien de traîneau à l’aide d’une ceinture et d’une ligne conçue spécialement pour l’activité !",
              'assets/images/cani_rando_1.jpg',
              onTap: () {},
            ),
            const Spacer(),
            CardHome(
              'Cani-randonnée nocturne',
              "Pratiquer la randonnée autrement ! Amoureux des montagnes, de nourriture et de randonnée, cette activité est faite pour vous !",
              'assets/images/cani_rando_nocturne_1.jpg',
              onTap: () {},
            ),
            const Spacer(),
            CardHome(
              'Visite du chenil',
              "Durant 1H00, au chenil à La Toussuire ou sur votre station. Ecoutez et découvrez le métier de musher ! Le professionnel vous accompagnera et vous présentera sa passion.",
              'assets/images/chenil_1.jpg',
              onTap: () {},
            ),
          ],
        ),
      ),
      const Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 48, vertical: 16),
          child: Text(
            'Nos activités hivernales :',
            style: TextStyle(fontSize: 28, fontFamily: 'Roboto'),
            textAlign: TextAlign.start,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 32),
        child: Row(
          children: [
            CardHome(
              'Balade en traineau',
              "Assis dans le traineau, guidé par 10 chiens et leur musher, venez vivre un moment de partage avec nos chiens.",
              'assets/images/balade_traineau_1.jpg',
              onTap: () {
                context.go(
                  ActivityWinterPage.routeName,
                  extra: {
                    ActivityWinterPage.indexAnchorKey: 0,
                  },
                );
              },
            ),
            const Spacer(),
            CardHome(
              'Conduite d’attelage',
              "Le temps d’une demi-journée, ou d’une journée entière devenez le musher de votre propre attelage !",
              'assets/images/conduite_attelage_1.jpg',
              onTap: () {
                context.go(
                  ActivityWinterPage.routeName,
                  extra: {
                    ActivityWinterPage.indexAnchorKey: 1,
                  },
                );
              },
            ),
            const Spacer(),
            // TODO Change photo
            CardHome(
              'Cani-raquette nocturne',
              "Le mardi soir ou le jeudi soir, venez découvrir la cani-raquette ! Équipé d’une ceinture et relié à un chien de traîneau, cette randonnée vous laissera un agréable souvenir",
              'assets/images/cani_raquette_2.jpeg',
              onTap: () {
                context.go(
                  ActivityWinterPage.routeName,
                  extra: {
                    ActivityWinterPage.indexAnchorKey: 2,
                  },
                );
              },
            ),
          ],
        ),
      ),
    ]);
  }
}
