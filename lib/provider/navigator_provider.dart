import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whiteforest_website/menu.dart';
import 'package:whiteforest_website/page/activity/activity_page.dart';
import 'package:whiteforest_website/page/contact/contact_page.dart';
import 'package:whiteforest_website/page/home/home_page.dart';
import 'package:whiteforest_website/page/kennel/kennel_page.dart';
import 'package:whiteforest_website/page/team/team_page.dart';

final navigatorProvider =
    ChangeNotifierProvider.autoDispose<NavigatorProvider>((ref) {
  return NavigatorProvider();
});

class NavigatorProvider extends ChangeNotifier {
  int selectedIndex = 0;

  final List<Menu> menuList = [
    Menu(
      1,
      'Accueil',
      body: const HomePage(),
    ),
    Menu(
      2,
      'Activité',
      body: const ActivityPage(),
    ),
    Menu(
      3,
      "L'équipe",
      body: const TeamPage(),
    ),
    Menu(
      4,
      'Le chenil',
      body: const KennelPage(),
    ),
    Menu(
      5,
      'Contact',
      body: const ContactPage(),
    ),
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
