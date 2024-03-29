import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/shared/utils.dart';

class ContactPage extends StatelessWidget {
  static const routeName = '/contact';

  ContactPage({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTopBar(context, _key, ContactPage.routeName),
      key: _key,
      drawer: const DrawerMobile(ContactPage.routeName),
      body: Container(
        padding: const EdgeInsets.only(top: kToolbarHeight + 50),
        child: const Center(
          child: Text('Page Contact'),
        ),
      ),
    );
  }
}
