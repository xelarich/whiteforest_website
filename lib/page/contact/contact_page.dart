import 'package:flutter/material.dart';
import 'package:whiteforest_website/component/topbar/top_bar_contents.dart';

class ContactPage extends StatelessWidget {
  static const routeName = '/contact';

  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBarContent(ContactPage.routeName),
      body: Container(
        padding: const EdgeInsets.only(top: kToolbarHeight + 50),
        child: const Center(
          child: Text('Page Contact'),
        ),
      ),
    );
  }
}
