import 'package:flutter/material.dart';
import 'package:whiteforest_website/page/main/base_page.dart';

class ContactPage extends StatelessWidget {
  static const routeName = '/contact';

  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      routeSelected: routeName,
      child: Container(
        padding: const EdgeInsets.only(top: kToolbarHeight + 50),
        child: const Center(
          child: Text('Page Contact'),
        ),
      ),
    );
  }
}
