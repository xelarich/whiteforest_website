import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive/responsive.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/page/home/widget/card_home.dart';
import 'package:whiteforest_website/page/summer/activity/activity_summer_page.dart';
import 'package:whiteforest_website/page/winter/activity/activity_winter_page.dart';
import 'package:whiteforest_website/shared/utils.dart';

class ActivityPart extends StatelessWidget {
  const ActivityPart({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;
    final hPadding = isMobile ? 20.0 : 64.0;
    final vPadding = isMobile ? 48.0 : 96.0;

    return Container(
      color: const Color(0xFFF5F0EB),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: vPadding, horizontal: hPadding),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      'Vous êtes plutôt',
                      style: TextStyle(fontSize: isMobile ? 24.0 : 30.0),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Été ou Hiver ?',
                      style: TextStyle(
                        fontSize: isMobile ? 36.0 : 50.0,
                        fontFamily: 'WickedGrit',
                      ),
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
                  ],
                ),
              ),
              SizedBox(height: isMobile ? 40.0 : 64.0),
              Text(
                'Nos activités estivales',
                style: TextStyle(
                  fontSize: isMobile ? 20.0 : 26.0,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: isMobile ? 20.0 : 28.0),
              ResponsiveRow(
                alignment: WrapAlignment.start,
                runAlignment: WrapAlignment.start,
                children: [
                  FlexWidget(
                    xs: 12,
                    sm: 12,
                    md: 6,
                    lg: 4,
                    xl: 4,
                    xxl: 4,
                    xxxl: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 10,
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
                    xs: 12,
                    sm: 12,
                    md: 6,
                    lg: 4,
                    xl: 4,
                    xxl: 4,
                    xxxl: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 10,
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
                    xs: 12,
                    sm: 12,
                    md: 6,
                    lg: 4,
                    xl: 4,
                    xxl: 4,
                    xxxl: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 10,
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
              SizedBox(height: isMobile ? 40.0 : 64.0),
              Text(
                'Nos activités hivernales',
                style: TextStyle(
                  fontSize: isMobile ? 20.0 : 26.0,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: isMobile ? 20.0 : 28.0),
              ResponsiveRow(
                alignment: WrapAlignment.start,
                runAlignment: WrapAlignment.start,
                children: [
                  FlexWidget(
                    xs: 12,
                    sm: 12,
                    md: 6,
                    lg: 4,
                    xl: 4,
                    xxl: 4,
                    xxxl: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 10,
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
                    xs: 12,
                    sm: 12,
                    md: 6,
                    lg: 4,
                    xl: 4,
                    xxl: 4,
                    xxxl: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 10,
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
                    xs: 12,
                    sm: 12,
                    md: 6,
                    lg: 4,
                    xl: 4,
                    xxl: 4,
                    xxxl: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 10,
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
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
