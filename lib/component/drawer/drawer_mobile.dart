import 'package:flutter/material.dart';
import 'package:whiteforest_website/component/drawer/widget/drawer_tile.dart';
import 'package:whiteforest_website/page/activity/group/activity_group_page.dart';
import 'package:whiteforest_website/page/activity/summer/activity_summer_page.dart';
import 'package:whiteforest_website/page/activity/winter/activity_winter_page.dart';
import 'package:whiteforest_website/page/contact/contact_page.dart';
import 'package:whiteforest_website/page/home/home_page.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile(this.routeSelected, {super.key});

  final String routeSelected;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.brown.shade200,
            ),
            child: Image.asset(
              'assets/images/white_forest_logo_resize.webp',
            ),
          ),
          DrawerTile('Accueil', routeSelected, routeName: HomePage.routeName),
          DrawerTile('Activités hiver', routeSelected,
              routeName: ActivityWinterPage.routeName),
          DrawerTile('Activités été', routeSelected,
              routeName: ActivitySummerPage.routeName),
          DrawerTile('Activités groupe', routeSelected,
              routeName: ActivityGroupPage.routeName),
          DrawerTile('Contact', routeSelected,
              routeName: ContactPage.routeName),
        ],
      ),
    );
  }
}
