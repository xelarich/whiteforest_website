import 'package:flutter/material.dart';
import 'package:whiteforest_website/page/main/base_page.dart';

class TeamPage extends StatelessWidget {
  static const routeName = '/team';

  const TeamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      routeSelected: routeName,
      child: Container(
        padding: const EdgeInsets.only(top: kToolbarHeight + 50),
        child: const Center(
          child: Text("Page L'Équipe"),
        ),
      ),
    );
  }
}
