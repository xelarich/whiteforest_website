import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart' hide Page, NavigationDrawer;
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/component/footer/footer.dart';
import 'package:whiteforest_website/page/winter/activity/widget/dog_racket_night.dart';
import 'package:whiteforest_website/page/winter/activity/widget/hitch_driving.dart';
import 'package:whiteforest_website/page/winter/activity/widget/sleigh_baptism.dart';
import 'package:whiteforest_website/shared/redirection_contact.dart';
import 'package:whiteforest_website/shared/utils.dart';

class ActivityWinterPage extends StatefulWidget {
  static const routeName = '/activityWinter';
  static const indexAnchorKey = 'indexAnchorKey';
  final int? indexAnchor;

  const ActivityWinterPage({this.indexAnchor, super.key});

  @override
  State<ActivityWinterPage> createState() => _ActivityWinterPageState();
}

class _ActivityWinterPageState extends State<ActivityWinterPage> {
  late final AnchorScrollController _scrollController;
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scrollController = AnchorScrollController();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;

    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        if (widget.indexAnchor != null) {
          _scrollController.scrollToIndex(
            index: widget.indexAnchor!,
            scrollSpeed: 5,
            curve: Curves.fastOutSlowIn,
          );
        }
      },
    );
    return Scaffold(
      appBar: getTopBar(context, _key, ActivityWinterPage.routeName),
      key: _key,
      drawer: const DrawerMobile(ActivityWinterPage.routeName),
      backgroundColor: const Color(0xFFF5F0EB),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            // Page header
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
                    'Activités hivernales',
                    style: TextStyle(
                      fontSize: isMobile ? 26 : 38,
                      fontFamily: 'WickedGrit',
                      color: Colors.white,
                      letterSpacing: 1,
                    ),
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
                    'Découvrez nos expériences sur la neige',
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
            SleighBaptism(_scrollController),
            HitchDriving(_scrollController),
            DogRacketNight(_scrollController),
            const SizedBox(height: 16),
            const RedirectionContact(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}