import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:whiteforest_website/page/booking/booking_page.dart';
import 'package:whiteforest_website/page/contact/contact_page.dart';
import 'package:whiteforest_website/page/home/home_page.dart';
import 'package:whiteforest_website/page/summer/activity/activity_summer_page.dart';
import 'package:whiteforest_website/page/summer/group/group_summer_page.dart';
import 'package:whiteforest_website/page/winter/activity/activity_winter_page.dart';
import 'package:whiteforest_website/page/winter/group/group_winter_page.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile(this.routeSelected, {super.key});

  final String routeSelected;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.brown.shade300,
                    Colors.brown.shade200,
                  ],
                ),
              ),
              child: SafeArea(
                bottom: false,
                child: Center(
                  child: Image.asset(
                    'assets/images/white_forest_logo.webp',
                    height: 100,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 8),
                children: [
                  _DrawerItem(
                    'Accueil',
                    LineAwesomeIcons.home_solid,
                    routeSelected,
                    routeName: HomePage.routeName,
                  ),
                  _DrawerItem(
                    'Prestations été',
                    LineAwesomeIcons.sun_solid,
                    routeSelected,
                    routeName: ActivitySummerPage.routeName,
                  ),
                  _DrawerItem(
                    'Groupe/CE été',
                    LineAwesomeIcons.users_solid,
                    routeSelected,
                    routeName: GroupSummerPage.routeName,
                  ),
                  _DrawerItem(
                    'Prestations hiver',
                    LineAwesomeIcons.snowflake,
                    routeSelected,
                    routeName: ActivityWinterPage.routeName,
                  ),
                  _DrawerItem(
                    'Groupe/CE hiver',
                    LineAwesomeIcons.users_solid,
                    routeSelected,
                    routeName: GroupWinterPage.routeName,
                  ),
                  _DrawerItem(
                    'Contact',
                    LineAwesomeIcons.envelope_solid,
                    routeSelected,
                    routeName: ContactPage.routeName,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD4A24E),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    context.go(BookingPage.routeName);
                  },
                  child: const Text(
                    'Réserver',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  const _DrawerItem(
    this.title,
    this.icon,
    this.routeSelected, {
    required this.routeName,
  });

  final String title;
  final IconData icon;
  final String routeSelected;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    final isSelected = routeName == routeSelected;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      child: ListTile(
        leading: Icon(
          icon,
          size: 22,
          color: isSelected ? Colors.brown.shade700 : Colors.brown.shade400,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
            color: isSelected ? Colors.brown.shade900 : Colors.brown.shade700,
            fontSize: 15,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        tileColor:
            isSelected ? Colors.brown.withValues(alpha: 0.08) : null,
        onTap: () {
          Navigator.pop(context);
          context.go(routeName);
        },
      ),
    );
  }
}