import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whiteforest_website/data/models/menu.dart';
import 'package:whiteforest_website/page/booking/booking_page.dart';
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
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.brown.shade300,
            Colors.brown.shade200,
            Colors.brown.shade300,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.brown.withValues(alpha: 0.3),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
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
                TabText(
                  'Contact',
                  isSelected: routeSelected == ContactPage.routeName,
                  onTap: () => context.go(ContactPage.routeName),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(180, 48),
                backgroundColor: const Color(0xFFD4A24E),
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              onPressed: () => context.go(BookingPage.routeName),
              child: const Text(
                'Réserver',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}