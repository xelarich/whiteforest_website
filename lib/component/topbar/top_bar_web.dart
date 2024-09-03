import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whiteforest_website/data/models/menu.dart';
import 'package:whiteforest_website/page/contact/contact_page.dart';
import 'package:whiteforest_website/page/home/home_page.dart';
import 'package:whiteforest_website/page/summer/activity/activity_summer_page.dart';
import 'package:whiteforest_website/page/summer/group/group_summer_page.dart';
import 'package:whiteforest_website/page/winter/activity/activity_winter_page.dart';
import 'package:whiteforest_website/page/winter/group/group_winter_page.dart';
import 'package:whiteforest_website/shared/tab_text.dart';

class TopBarWeb extends StatelessWidget implements PreferredSizeWidget {
  final String routeSelected;

  const TopBarWeb(this.routeSelected, {super.key});

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.brown.shade200,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          InkWell(
            onTap: () => context.go(HomePage.routeName),
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Image.asset(
                'assets/images/white_forest_logo.webp',
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabText(
                  'Accueil',
                  isSelected: routeSelected == HomePage.routeName,
                  onTap: () => context.go(HomePage.routeName),
                ),
                TabText(
                  'Activités été',
                  isSelected: routeSelected == ActivitySummerPage.routeName ||
                      routeSelected == GroupSummerPage.routeName,
                  children: [
                    SubMenu('Prestations été', ActivitySummerPage.routeName),
                    SubMenu('Groupe/CE été', GroupSummerPage.routeName),
                  ],
                ),
                TabText(
                  'Activités hiver',
                  isSelected: routeSelected == ActivityWinterPage.routeName ||
                      routeSelected == GroupWinterPage.routeName,
                  children: [
                    SubMenu('Prestations hiver', ActivityWinterPage.routeName),
                    SubMenu(
                      'Groupe/CE hiver',
                      GroupWinterPage.routeName,
                    ),
                  ],
                ),
                /*TabText(
                  "L'équipe",
                  isSelected: routeSelected == TeamPage.routeName,
                  onTap: () => context.go(TeamPage.routeName),
                ),*/
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
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
    );
  }
}
