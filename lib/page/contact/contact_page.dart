import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: kToolbarHeight + 50),
      child: const Center(
        child: Text('Page Contact'),
      ),
    );
  }
}
