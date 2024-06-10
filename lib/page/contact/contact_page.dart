import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/page/contact/widget/form_contact.dart';
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
      body: Stack(
        children: [
          Container(
            color: Colors.brown.shade50,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32,vertical: 64),
            child: Column(
              children: [
                Expanded(
                  child: FormContact(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
