import 'package:flutter/material.dart';
import 'package:whiteforest_website/component/topbar/top_bar_web.dart';

class GroupWinterPage extends StatelessWidget {
  static const routeName = '/groupWinter';

  const GroupWinterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBarWeb(GroupWinterPage.routeName),
      body: Container(
        padding: const EdgeInsets.only(top: kToolbarHeight + 50),
        child: const Center(
          child: Text("Page Groupe hiver"),
        ),
      ),
    );
  }
}
