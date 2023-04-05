import 'package:flutter/material.dart';

class KennelPage extends StatelessWidget {
  const KennelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: kToolbarHeight + 50),
      child: Center(
        child: Text('Page Le chenil'),
      ),
    );
  }
}
