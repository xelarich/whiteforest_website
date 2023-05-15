import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: kToolbarHeight + 50),
      child: const Center(
        child: Text('Page Activité'),
      ),
    );
  }
}
