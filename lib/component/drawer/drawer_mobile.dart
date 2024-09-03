import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whiteforest_website/component/drawer/widget/drawer_tile.dart';
import 'package:whiteforest_website/page/contact/contact_page.dart';
import 'package:whiteforest_website/page/home/home_page.dart';
import 'package:whiteforest_website/page/summer/activity/activity_summer_page.dart';
import 'package:whiteforest_website/page/summer/group/group_summer_page.dart';
import 'package:whiteforest_website/page/winter/activity/activity_winter_page.dart';
import 'package:whiteforest_website/page/winter/group/group_winter_page.dart';
import 'package:whiteforest_website/shared/styles.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile(this.routeSelected, {super.key});

  final String routeSelected;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.brown.shade200,
              ),
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 150, // Définir la largeur souhaitée
                  height: 150, // Définir la hauteur souhaitée
                  child: Image.asset(
                    'assets/images/white_forest_logo.webp',
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  DrawerTile('Accueil', routeSelected,
                      routeName: HomePage.routeName),
                  ExpansionTile(
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Activités été',
                      ),
                    ),
                    iconColor: Colors.brown,
                    initiallyExpanded:
                        routeSelected == ActivitySummerPage.routeName ||
                            routeSelected == GroupSummerPage.routeName,
                    children: [
                      DrawerTile(
                        'Prestations',
                        routeSelected,
                        routeName: ActivitySummerPage.routeName,
                        isSubMenu: true,
                      ),
                      DrawerTile(
                        'Groupe/CE',
                        routeSelected,
                        routeName: GroupSummerPage.routeName,
                        isSubMenu: true,
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Activités hiver',
                      ),
                    ),
                    iconColor: Colors.brown,
                    initiallyExpanded:
                        routeSelected == ActivityWinterPage.routeName ||
                            routeSelected == GroupWinterPage.routeName,
                    children: [
                      DrawerTile(
                        'Prestations',
                        routeSelected,
                        routeName: ActivityWinterPage.routeName,
                        isSubMenu: true,
                      ),
                      DrawerTile(
                        'Groupe/CE',
                        routeSelected,
                        routeName: GroupWinterPage.routeName,
                        isSubMenu: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(180, 50),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
                onPressed: () => context.go(ContactPage.routeName),
                child: const Text(
                  'Contactez-nous',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
