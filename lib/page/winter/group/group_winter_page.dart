import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/component/footer/footer.dart';
import 'package:whiteforest_website/page/winter/group/widget/dog_kennel_group.dart';
import 'package:whiteforest_website/page/winter/group/widget/dog_racket_group.dart';
import 'package:whiteforest_website/page/winter/group/widget/hitch_driving_group.dart';
import 'package:whiteforest_website/page/winter/group/widget/sleigh_group.dart';
import 'package:whiteforest_website/shared/redirection_contact.dart';
import 'package:whiteforest_website/shared/utils.dart';

class GroupWinterPage extends StatefulWidget {
  static const routeName = '/groupWinter';

  const GroupWinterPage({super.key});

  @override
  State<GroupWinterPage> createState() => _GroupWinterPageState();
}

class _GroupWinterPageState extends State<GroupWinterPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;

    return Scaffold(
      appBar: getTopBar(context, _key, GroupWinterPage.routeName),
      key: _key,
      drawer: const DrawerMobile(GroupWinterPage.routeName),
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
                    Colors.brown.shade800,
                    Colors.brown.shade600,
                  ],
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Offres groupes — Hiver',
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
            const SleighGroup(),
            const HitchDrivingGroup(),
            const DogRacketGroup(),
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
