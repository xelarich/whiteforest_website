import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/component/footer/footer.dart';
import 'package:whiteforest_website/page/summer/group/widget/cani_hike_day_group.dart';
import 'package:whiteforest_website/page/winter/group/widget/dog_racket_group.dart';
import 'package:whiteforest_website/page/winter/group/widget/dog_kennel_group.dart';
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
    return Scaffold(
      appBar: getTopBar(context, _key, GroupWinterPage.routeName),
      key: _key,
      drawer: const DrawerMobile(GroupWinterPage.routeName),
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
                  const SleighGroup(),
                  const SizedBox(
                    height: 64,
                  ),
                  const HitchDrivingGroup(),
                  const SizedBox(
                    height: 64,
                  ),
                  const DogRacketGroup(),
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
