import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
    final isDesktop = ResponsiveBreakpoints.of(context).isDesktop;
    final hPadding = isMobile ? 20.0 : 64.0;
    final vPadding = isMobile ? 48.0 : 96.0;

    final summerCards = [
      CardHome(
        'Cani-randonnée',
        "Randonnée à pied, tracté par un chien de traineau à l'aide d'une ceinture et d'une ligne conçue spécialement pour l'activité !",
        'assets/images/summer/${getPathImage(context)}cani_rando.webp',
        onTap: () => context.go(
          ActivitySummerPage.routeName,
          extra: {ActivitySummerPage.indexAnchorKey: 1},
        ),
      ),
      CardHome(
        'Cani-randonnée nocturne',
        'Pratiquer la randonnée autrement ! Amoureux des montagnes, de nourriture et de randonnée, cette activité est faite pour vous !',
        'assets/images/summer/${getPathImage(context)}cani_rando_nocturne.webp',
        onTap: () => context.go(
          ActivitySummerPage.routeName,
          extra: {ActivitySummerPage.indexAnchorKey: 2},
        ),
      ),
      CardHome(
        'Visite du chenil',
        'Durant 1H00, au chenil à La Toussuire ou sur votre station. Ecoutez et découvrez le métier de musher !',
        'assets/images/summer/${getPathImage(context)}chenil.webp',
        onTap: () => context.go(
          ActivitySummerPage.routeName,
          extra: {ActivitySummerPage.indexAnchorKey: 3},
        ),
      ),
    ];

    final winterCards = [
      CardHome(
        'Balade en traineau',
        'Assis dans le traineau, guidé par 10 chiens et leur musher, venez vivre un moment de partage avec nos chiens.',
        'assets/images/winter/${getPathImage(context)}balade_traineau.webp',
        alignment: Alignment.centerRight,
        onTap: () => context.go(
          ActivityWinterPage.routeName,
          extra: {ActivityWinterPage.indexAnchorKey: 0},
        ),
      ),
      CardHome(
        "Conduite d'attelage",
        "Le temps d'une demi-journée devenez le musher de votre propre attelage !",
        'assets/images/winter/${getPathImage(context)}conduite_attelage.webp',
        onTap: () => context.go(
          ActivityWinterPage.routeName,
          extra: {ActivityWinterPage.indexAnchorKey: 1},
        ),
      ),
      CardHome(
        'Cani-randonnée hivernale',
        "Équipé d'une ceinture et relié à un chien de traineau, cette randonnée vous laissera un agréable souvenir.",
        getPathImage(context) == 'mobile/'
            ? 'assets/images/winter/mobile/cani_raquette_nocturne.webp'
            : 'assets/images/winter/web/cani_nocturne.webp',
        onTap: () => context.go(
          ActivityWinterPage.routeName,
          extra: {ActivityWinterPage.indexAnchorKey: 2},
        ),
      ),
    ];

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
              _CardGrid(cards: summerCards, isMobile: isMobile, isDesktop: isDesktop),
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
              _CardGrid(cards: winterCards, isMobile: isMobile, isDesktop: isDesktop),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class _CardGrid extends StatelessWidget {
  final List<Widget> cards;
  final bool isMobile;
  final bool isDesktop;

  const _CardGrid({
    required this.cards,
    required this.isMobile,
    required this.isDesktop,
  });

  @override
  Widget build(BuildContext context) {
    if (isMobile) {
      return Column(
        children: [
          for (int i = 0; i < cards.length; i++) ...[
            if (i > 0) const SizedBox(height: 16),
            cards[i],
          ],
        ],
      );
    }

    if (isDesktop) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 0; i < cards.length; i++) ...[
            if (i > 0) const SizedBox(width: 16),
            Expanded(child: cards[i]),
          ],
        ],
      );
    }

    // Tablet : 2 colonnes basées sur la largeur réelle du container
    return LayoutBuilder(
      builder: (context, constraints) {
        final itemWidth = (constraints.maxWidth - 16) / 2;
        return Wrap(
          spacing: 16,
          runSpacing: 16,
          children: cards
              .map((c) => SizedBox(width: itemWidth, child: c))
              .toList(),
        );
      },
    );
  }
}
