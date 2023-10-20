import 'package:flutter/material.dart';
import 'package:whiteforest_website/component/topbar/top_bar_contents.dart';

class TeamPage extends StatelessWidget {
  static const routeName = '/team';

  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBarContent(TeamPage.routeName),
      body: Container(
        padding: const EdgeInsets.only(top: kToolbarHeight + 50),
        child: const Center(
          child: Text("Page L'Équipe"),
        ),
      ),
    );
  }
}
