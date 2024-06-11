import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:get_it/get_it.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/page/contact/widget/form_contact.dart';
import 'package:whiteforest_website/service/conf/conf_service.dart';
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
      body: Stack(
        children: [
          Container(
            color: Colors.brown.shade50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                  child: Text('Contactez-nous !'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: ResponsiveValue<double>(
                          context,
                          defaultValue: 28,
                          conditionalValues: [
                            const Condition<double>.largerThan(
                                name: MOBILE, value: 38)
                          ],
                        ).value,
                        fontFamily: 'WickedGrit',
                      )),
                ),
                const FormContact(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
