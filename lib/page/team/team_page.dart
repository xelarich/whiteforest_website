import 'package:flutter/material.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: kToolbarHeight + 50),
      child: const Center(
        child: Text("Page L'Équipe"),
      ),
    );
  }
}
