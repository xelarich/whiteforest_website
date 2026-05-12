import 'package:flutter/material.dart' hide Page, NavigationDrawer;
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/component/footer/footer.dart';
import 'package:whiteforest_website/page/summer/group/widget/cani_hike_day_group.dart';
import 'package:whiteforest_website/page/summer/group/widget/cani_hike_group.dart';
import 'package:whiteforest_website/page/summer/group/widget/dog_kennel_group.dart';
import 'package:whiteforest_website/shared/redirection_contact.dart';
import 'package:whiteforest_website/shared/utils.dart';

class GroupSummerPage extends StatefulWidget {
  static const routeName = '/groupSummer';

  const GroupSummerPage({super.key});

  @override
  State<GroupSummerPage> createState() => _GroupSummerPageState();
}

class _GroupSummerPageState extends State<GroupSummerPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;

    return Scaffold(
      appBar: getTopBar(context, _key, GroupSummerPage.routeName),
      key: _key,
      drawer: const DrawerMobile(GroupSummerPage.routeName),
      backgroundColor: const Color(0xFFF5F0EB),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                vertical: isMobile ? 32 : 48,
                horizontal: 24,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.green.shade800,
                    Colors.green.shade600,
                  ],
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Offres groupes — Été',
                    style: TextStyle(
                      fontSize: isMobile ? 26 : 38,
                      fontFamily: 'WickedGrit',
                      color: Colors.white,
                      letterSpacing: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                  Container(
                    width: 50,
                    height: 3,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD4A24E),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Des expériences sur mesure pour vos groupes (+ de 15 personnes)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                      color: Colors.white.withValues(alpha: 0.85),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const CaniHikeGroup(),
            const CaniHikeDayGroup(),
            const DogKennelGroup(),
            const SizedBox(height: 16),
            const RedirectionContact(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
