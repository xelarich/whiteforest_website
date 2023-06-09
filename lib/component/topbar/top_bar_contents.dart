import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:whiteforest_website/menu.dart';
import 'package:whiteforest_website/page/activity/group/activity_group_page.dart';
import 'package:whiteforest_website/page/activity/summer/activity_summer_page.dart';
import 'package:whiteforest_website/page/activity/winter/activity_winter_page.dart';
import 'package:whiteforest_website/page/contact/contact_page.dart';
import 'package:whiteforest_website/page/home/home_page.dart';
import 'package:whiteforest_website/page/kennel/kennel_page.dart';
import 'package:whiteforest_website/page/team/team_page.dart';
import 'package:whiteforest_website/shared/tab_text.dart';

class TopBarContent extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  final double opacity;
  final String routeSelected;

  const TopBarContent(this.routeSelected, {this.opacity = 1, super.key});

  @override
  TopBarContentsState createState() => TopBarContentsState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 50);
}

class TopBarContentsState extends ConsumerState<TopBarContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.brown.shade200.withOpacity(widget.opacity),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/white_forest_logo.png',
              height: kToolbarHeight + 10,
            ),
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TabText(
                      'Accueil',
                      isSelected: widget.routeSelected == HomePage.routeName,
                      onTap: () => context.go(HomePage.routeName),
                    ),
                    TabText(
                      'Activité',
                      isSelected: widget.routeSelected ==
                              ActivityWinterPage.routeName ||
                          widget.routeSelected ==
                              ActivitySummerPage.routeName ||
                          widget.routeSelected == ActivityGroupPage.routeName,
                      children: [
                        SubMenu(
                            'Activités hiver', ActivityWinterPage.routeName),
                        SubMenu('Activités été', ActivitySummerPage.routeName),
                        SubMenu(
                            'Activités groupe', ActivityGroupPage.routeName),
                      ],
                    ),
                    TabText(
                      'Le chenil',
                      isSelected: widget.routeSelected == KennelPage.routeName,
                      onTap: () => context.go(KennelPage.routeName),
                    ),
                    TabText(
                      "L'équipe",
                      isSelected: widget.routeSelected == TeamPage.routeName,
                      onTap: () => context.go(TeamPage.routeName),
                    ),
                    TabText(
                      'Contact',
                      isSelected: widget.routeSelected == ContactPage.routeName,
                      onTap: () => context.go(ContactPage.routeName),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.all(16),
                    ),
                    child: const Row(
                      children: [
                        Text(
                          "Réserver",
                          style: TextStyle(color: Colors.white70, fontSize: 22),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.arrow_circle_right,
                          color: Colors.white70,
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
