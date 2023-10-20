import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart' hide Page;
import 'package:whiteforest_website/component/footer/footer_content.dart';
import 'package:whiteforest_website/component/topbar/top_bar_contents.dart';
import 'package:whiteforest_website/page/activity/summer/widget/dog_hicking.dart';
import 'package:whiteforest_website/page/activity/winter/widget/dog_racket.dart';
import 'package:whiteforest_website/page/activity/winter/widget/hitch_driving.dart';

class ActivitySummerPage extends StatefulWidget {
  static const routeName = '/activitySummer';
  static const indexAnchorKey = 'indexAnchorKey';
  final int? indexAnchor;

  const ActivitySummerPage({this.indexAnchor, super.key});

  @override
  State<ActivitySummerPage> createState() => _ActivitySummerPageState();
}

class _ActivitySummerPageState extends State<ActivitySummerPage> {
  late final AnchorScrollController _scrollController;

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
          _scrollController.scrollToIndex(index: widget.indexAnchor!);
        }
      },
    );

    return Scaffold(
      appBar: const TopBarContent(ActivitySummerPage.routeName),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Text('Les activités estivales'.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 48,
                          fontFamily: 'WickedGrit',
                        )),
                  ),
                  DogHicking(_scrollController),
                  const SizedBox(
                    height: 64,
                  ),
                  HitchDriving(_scrollController),
                  const SizedBox(
                    height: 64,
                  ),
                  DogRacket(_scrollController),
                  const SizedBox(
                    height: 64,
                  ),
                  const FooterContent(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
