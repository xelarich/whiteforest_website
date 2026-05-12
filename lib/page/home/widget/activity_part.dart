import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive/responsive.dart';
import 'package:whiteforest_website/page/home/widget/card_home.dart';
import 'package:whiteforest_website/page/summer/activity/activity_summer_page.dart';
import 'package:whiteforest_website/page/winter/activity/activity_winter_page.dart';
import 'package:whiteforest_website/shared/utils.dart';

class ActivityPart extends StatelessWidget {
  const ActivityPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF5F0EB),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: Column(
        children: [
          const Text(
            'Vous êtes plutôt',
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const Text(
            'Été ou Hiver ?',
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
          const SizedBox(height: 40),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 48),
              child: Text(
                'Nos activités estivales',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: ResponsiveRow(
              alignment: WrapAlignment.spaceEvenly,
              runAlignment: WrapAlignment.spaceEvenly,
              children: [
                FlexWidget(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 12,
                    ),
                    child: CardHome(
                      'Cani-randonnée',
                      "Randonnée à pied, tracté par un chien de traineau à l'aide d'une ceinture et d'une ligne conçue spécialement pour l'activité !",
                      'assets/images/summer/${getPathImage(context)}cani_rando.webp',
                      onTap: () {
                        context.go(
                          ActivitySummerPage.routeName,
                          extra: {ActivitySummerPage.indexAnchorKey: 1},
                        );
                      },
                    ),
                  ),
                ),
                FlexWidget(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 12,
                    ),
                    child: CardHome(
                      'Cani-randonnée nocturne',
                      'Pratiquer la randonnée autrement ! Amoureux des montagnes, de nourriture et de randonnée, cette activité est faite pour vous !',
                      'assets/images/summer/${getPathImage(context)}cani_rando_nocturne.webp',
                      onTap: () {
                        context.go(
                          ActivitySummerPage.routeName,
                          extra: {ActivitySummerPage.indexAnchorKey: 2},
                        );
                      },
                    ),
                  ),
                ),
                FlexWidget(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 12,
                    ),
                    child: CardHome(
                      'Visite du chenil',
                      'Durant 1H00, au chenil à La Toussuire ou sur votre station. Ecoutez et découvrez le métier de musher !',
                      'assets/images/summer/${getPathImage(context)}chenil.webp',
                      onTap: () {
                        context.go(
                          ActivitySummerPage.routeName,
                          extra: {ActivitySummerPage.indexAnchorKey: 3},
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 48),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 48),
              child: Text(
                'Nos activités hivernales',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: ResponsiveRow(
              alignment: WrapAlignment.spaceEvenly,
              runAlignment: WrapAlignment.spaceEvenly,
              children: [
                FlexWidget(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 12,
                    ),
                    child: CardHome(
                      'Balade en traineau',
                      'Assis dans le traineau, guidé par 10 chiens et leur musher, venez vivre un moment de partage avec nos chiens.',
                      'assets/images/winter/${getPathImage(context)}balade_traineau.webp',
                      alignment: Alignment.centerRight,
                      onTap: () {
                        context.go(
                          ActivityWinterPage.routeName,
                          extra: {ActivityWinterPage.indexAnchorKey: 0},
                        );
                      },
                    ),
                  ),
                ),
                FlexWidget(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 12,
                    ),
                    child: CardHome(
                      "Conduite d'attelage",
                      "Le temps d'une demi-journée devenez le musher de votre propre attelage !",
                      'assets/images/winter/${getPathImage(context)}conduite_attelage.webp',
                      onTap: () {
                        context.go(
                          ActivityWinterPage.routeName,
                          extra: {ActivityWinterPage.indexAnchorKey: 1},
                        );
                      },
                    ),
                  ),
                ),
                FlexWidget(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 12,
                    ),
                    child: CardHome(
                      'Cani-randonnée hivernale',
                      "Équipé d'une ceinture et relié à un chien de traineau, cette randonnée vous laissera un agréable souvenir.",
                      getPathImage(context) == 'mobile/'
                          ? 'assets/images/winter/mobile/cani_raquette_nocturne.webp'
                          : 'assets/images/winter/web/cani_nocturne.webp',
                      onTap: () {
                        context.go(
                          ActivityWinterPage.routeName,
                          extra: {ActivityWinterPage.indexAnchorKey: 2},
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}