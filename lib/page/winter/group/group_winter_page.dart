import 'package:flutter/material.dart';
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
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
      key: _key,
      appBar: getTopBar(context, _key, GroupWinterPage.routeName),
      drawer: const DrawerMobile(GroupWinterPage.routeName),
      body: Container(
        padding: const EdgeInsets.only(top: kToolbarHeight + 50),
        child: const Center(
          child: Text('Page Groupe hiver'),
        ),
      ),
    );
  }
}
