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
    return Scaffold(
      appBar: getTopBar(context, _key, GroupSummerPage.routeName),
      key: _key,
      drawer: const DrawerMobile(GroupSummerPage.routeName),
      backgroundColor: Colors.brown.shade50,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 24,
                      horizontal: 16,
                    ),
                    child: Text(
                      'Offres groupes'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: ResponsiveValue<double>(
                          context,
                          defaultValue: 28,
                          conditionalValues: [
                            const Condition<double>.largerThan(
                              name: MOBILE,
                              value: 38,
                            ),
                          ],
                        ).value,
                        fontFamily: 'WickedGrit',
                      ),
                    ),
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
