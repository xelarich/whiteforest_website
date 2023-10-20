import 'package:flutter/material.dart';
import 'package:whiteforest_website/component/topbar/top_bar_contents.dart';

class KennelPage extends StatelessWidget {
  static const routeName = '/kennel';

  const KennelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBarContent(KennelPage.routeName),
      body: Container(
        padding: const EdgeInsets.only(top: kToolbarHeight + 50),
        child: const Center(
          child: Text('Page Le chenil'),
        ),
      ),
    );
  }
}
