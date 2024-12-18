import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart' hide Page, NavigationDrawer;
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
      backgroundColor: Colors.brown.shade50,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Text(
                      'Les activités hivernales'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 38,
                        fontFamily: 'WickedGrit',
                      ),
                    ),
                  ),
                  SleighBaptism(_scrollController),
                  const SizedBox(
                    height: 64,
                  ),
                  HitchDriving(_scrollController),
                  const SizedBox(
                    height: 64,
                  ),
                  DogRacketNight(_scrollController),
                  const SizedBox(
                    height: 64,
                  ),
                  RedirectionContact(),
                  const SizedBox(
                    height: 64,
                  ),
                  const Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
