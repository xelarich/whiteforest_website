import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart' hide Page, NavigationDrawer;
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/component/footer/footer.dart';
import 'package:whiteforest_website/page/activity/group/widget/cani_hike_group.dart';
import 'package:whiteforest_website/page/activity/group/widget/cani_hike_day_group.dart';
import 'package:whiteforest_website/page/activity/group/widget/dog_kennel.dart';
import 'package:whiteforest_website/shared/utils.dart';

class ActivityGroupPage extends StatefulWidget {
  static const routeName = '/activityGroup';
  static const indexAnchorKey = 'indexAnchorKey';

  const ActivityGroupPage({super.key});

  @override
  State<ActivityGroupPage> createState() => _ActivityGroupPageState();
}

class _ActivityGroupPageState extends State<ActivityGroupPage> {
  late final AnchorScrollController _scrollController;
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scrollController = AnchorScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTopBar(context, _key, ActivityGroupPage.routeName),
      key: _key,
      drawer: const DrawerMobile(ActivityGroupPage.routeName),
      backgroundColor: Colors.brown.shade50,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 16),
                    child: Text('Offres groupes'.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: ResponsiveValue<double>(
                            context,
                            defaultValue: 28,
                            conditionalValues: [
                              const Condition<double>.largerThan(
                                  name: MOBILE, value: 38)
                            ],
                          ).value,
                          fontFamily: 'WickedGrit',
                        )),
                  ),
                  CaniHikeGroup(_scrollController),
                  const SizedBox(
                    height: 64,
                  ),
                  CaniHikeDayGroup(_scrollController),
                  const SizedBox(
                    height: 64,
                  ),
                  DogKennel(_scrollController),
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
