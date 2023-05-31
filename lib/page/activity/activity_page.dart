import 'package:flutter/material.dart';
import 'package:whiteforest_website/page/main/base_page.dart';

class ActivityPage extends StatelessWidget {
  static const routeName = '/activity';
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      routeSelected: routeName,
      child: Container(
        padding: const EdgeInsets.only(top: kToolbarHeight + 50),
        child: const Center(
          child: Text('Page Activité'),
        ),
      ),
    );
  }
}
