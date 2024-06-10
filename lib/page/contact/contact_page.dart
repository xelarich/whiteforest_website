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
          Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.60,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'assets/images/home/${getPathImage(context)}home_page_summer.webp',
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.brown.shade100,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              height: 1000,
              width: 1000,
              padding: const EdgeInsets.symmetric(vertical: 64),
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    const FormContact(),
                    Container(
                      height: 300,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 300,
                      color: Colors.green,
                    ),
                    Container(
                      height: 300,
                      color: Colors.black,
                    ),
                    Container(
                      height: 300,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: 300,
                      color: Colors.orange,
                    ),
                    Container(
                      height: 300,
                      color: Colors.purple,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
