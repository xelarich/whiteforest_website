import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart' hide Page, NavigationDrawer;
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/component/footer/footer.dart';
import 'package:whiteforest_website/page/activity/summer/widget/cani_hike.dart';
import 'package:whiteforest_website/page/activity/summer/widget/cani_hike_days.dart';
import 'package:whiteforest_website/page/activity/summer/widget/cani_hike_night.dart';
import 'package:whiteforest_website/page/activity/summer/widget/dog_kennel.dart';
import 'package:whiteforest_website/page/contact/contact_page.dart';
import 'package:whiteforest_website/shared/utils.dart';

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
              curve: Curves.fastOutSlowIn);
        }
      },
    );

    return Scaffold(
      appBar: getTopBar(context, _key, ActivitySummerPage.routeName),
      key: _key,
      drawer: const DrawerMobile(ActivitySummerPage.routeName),
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
                    child: Text('Les activités estivales'.toUpperCase(),
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
                  CaniHikeDays(_scrollController),
                  const SizedBox(
                    height: 64,
                  ),
                  CaniHike(_scrollController),
                  const SizedBox(
                    height: 64,
                  ),
                  CaniHikeNight(_scrollController),
                  const SizedBox(
                    height: 64,
                  ),
                  DogKennel(_scrollController),
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
