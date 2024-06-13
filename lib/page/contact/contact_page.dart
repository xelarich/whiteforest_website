import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:get_it/get_it.dart';
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/component/footer/footer.dart';
import 'package:whiteforest_website/page/contact/widget/form_contact.dart';
import 'package:whiteforest_website/service/conf_service.dart';
import 'package:whiteforest_website/shared/utils.dart';

class ContactPage extends StatelessWidget {
  static const routeName = '/contact';
  final ConfService confService = GetIt.I.get<ConfService>();

  ContactPage({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTopBar(context, _key, ContactPage.routeName),
      key: _key,
      drawer: const DrawerMobile(ContactPage.routeName),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.brown.shade50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
                child: Column(
                  children: [
                    FormContact(),
                  ],
                ),
              ),
            ],
          ),
          const Footer(),
        ],
      ),
    );
  }
}
