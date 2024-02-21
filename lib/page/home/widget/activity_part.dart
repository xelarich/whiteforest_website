import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive/responsive.dart';
import 'package:whiteforest_website/page/activity/summer/activity_summer_page.dart';
import 'package:whiteforest_website/page/activity/winter/activity_winter_page.dart';
import 'package:whiteforest_website/page/home/widget/card_home.dart';
import 'package:whiteforest_website/shared/utils.dart';

class ActivityPart extends StatelessWidget {
  const ActivityPart({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(shrinkWrap: true, children: [
      const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Vous êtes plutôt',
            style: TextStyle(
              fontSize: 28,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
      const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Été ou Hiver ?',
            style: TextStyle(fontSize: 38, fontFamily: 'WickedGrit'),
            textAlign: TextAlign.justify,
          ),
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
        child: ResponsiveRow(
          alignment: WrapAlignment.spaceEvenly,
          runAlignment: WrapAlignment.spaceEvenly,
          children: [
            FlexWidget(
              child: CardHome(
                'Cani-randonnée',
                "Randonnée à pied, tracté par un chien de traîneau à l’aide d’une ceinture et d’une ligne conçue spécialement pour l’activité !",
                'assets/images/summer/${getPathImage(context)}cani_rando.webp',
                onTap: () {
                  context.go(
                    ActivitySummerPage.routeName,
                    extra: {
                      ActivitySummerPage.indexAnchorKey: 1,
                    },
                  );
                },
              ),
            ),
            FlexWidget(
              child: CardHome(
                'Cani-randonnée nocturne',
                "Pratiquer la randonnée autrement ! Amoureux des montagnes, de nourriture et de randonnée, cette activité est faite pour vous !",
                'assets/images/summer/${getPathImage(context)}cani_rando_nocturne.webp',
                onTap: () {
                  context.go(
                    ActivitySummerPage.routeName,
                    extra: {
                      ActivitySummerPage.indexAnchorKey: 2,
                    },
                  );
                },
              ),
            ),
            FlexWidget(
              child: CardHome(
                'Visite du chenil',
                "Durant 1H00, au chenil à La Toussuire ou sur votre station. Ecoutez et découvrez le métier de musher ! Le professionnel vous accompagnera et vous présentera sa passion.",
                'assets/images/summer/${getPathImage(context)}chenil.webp',
                onTap: () {
                  context.go(
                    ActivitySummerPage.routeName,
                    extra: {
                      ActivitySummerPage.indexAnchorKey: 3,
                    },
                  );
                },
              ),
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
        child: ResponsiveRow(
          alignment: WrapAlignment.spaceEvenly,
          runAlignment: WrapAlignment.spaceEvenly,
          children: [
            FlexWidget(
              child: CardHome(
                'Balade en traineau',
                "Assis dans le traineau, guidé par 10 chiens et leur musher, venez vivre un moment de partage avec nos chiens.",
                'assets/images/winter/${getPathImage(context)}balade_traineau.webp',
                alignment: Alignment.centerRight,
                onTap: () {
                  context.go(
                    ActivityWinterPage.routeName,
                    extra: {
                      ActivityWinterPage.indexAnchorKey: 0,
                    },
                  );
                },
              ),
            ),
            FlexWidget(
              child: CardHome(
                'Conduite d’attelage',
                "Le temps d’une demi-journée, ou d’une journée entière devenez le musher de votre propre attelage !",
                'assets/images/winter/${getPathImage(context)}conduite_attelage.webp',
                onTap: () {
                  context.go(
                    ActivityWinterPage.routeName,
                    extra: {
                      ActivityWinterPage.indexAnchorKey: 1,
                    },
                  );
                },
              ),
            ),
            FlexWidget(
              child: CardHome(
                'Cani-raquette nocturne',
                "Le mardi soir ou le jeudi soir, venez découvrir la cani-raquette ! Équipé d’une ceinture et relié à un chien de traîneau, cette randonnée vous laissera un agréable souvenir",
                'assets/images/winter/${getPathImage(context)}cani_raquette_nocturne.webp',
                onTap: () {
                  context.go(
                    ActivityWinterPage.routeName,
                    extra: {
                      ActivityWinterPage.indexAnchorKey: 2,
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
