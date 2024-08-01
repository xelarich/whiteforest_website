import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart' hide Page, NavigationDrawer;
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/component/footer/footer.dart';
import 'package:whiteforest_website/page/activity/group/widget/cani_hike_day_group.dart';
import 'package:whiteforest_website/page/activity/group/widget/cani_hike_group.dart';
import 'package:whiteforest_website/page/activity/group/widget/dog_kennel_group.dart';
import 'package:whiteforest_website/page/contact/contact_page.dart';
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
                  const CaniHikeGroup(),
                  const SizedBox(
                    height: 64,
                  ),
                  const CaniHikeDayGroup(),
                  const SizedBox(
                    height: 64,
                  ),
                  const DogKennelGroup(),
                  const SizedBox(
                    height: 64,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Text(
                          "Une information ? Un devis ? Une réservation ?",
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
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(180, 50),
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            onPressed: () => context.go(ContactPage.routeName),
                            child: const Text(
                              'Contactez-nous',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
