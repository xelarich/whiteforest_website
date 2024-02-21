import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whiteforest_website/menu.dart';
import 'package:whiteforest_website/page/activity/group/activity_group_page.dart';
import 'package:whiteforest_website/page/activity/summer/activity_summer_page.dart';
import 'package:whiteforest_website/page/activity/winter/activity_winter_page.dart';
import 'package:whiteforest_website/page/contact/contact_page.dart';
import 'package:whiteforest_website/page/home/home_page.dart';
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
                  'Activité',
                  isSelected: routeSelected == ActivityWinterPage.routeName ||
                      routeSelected == ActivitySummerPage.routeName ||
                      routeSelected == ActivityGroupPage.routeName,
                  children: [
                    SubMenu('Activités hiver', ActivityWinterPage.routeName),
                    SubMenu('Activités été', ActivitySummerPage.routeName),
                    SubMenu('Activités groupe', ActivityGroupPage.routeName),
                  ],
                ),
                /*TabText(
                  'Le chenil',
                  isSelected: widget.routeSelected == KennelPage.routeName,
                  onTap: () => context.go(KennelPage.routeName),
                ),
                TabText(
                  "L'équipe",
                  isSelected: widget.routeSelected == TeamPage.routeName,
                  onTap: () => context.go(TeamPage.routeName),
                ),*/
                TabText(
                  'Contact',
                  isSelected: routeSelected == ContactPage.routeName,
                  onTap: () => context.go(ContactPage.routeName),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
