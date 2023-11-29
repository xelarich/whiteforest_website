import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class TopBarMobile extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const TopBarMobile({
    required this.scaffoldKey,
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(68);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        alignment: Alignment.bottomCenter,
        icon: const Icon(LineAwesomeIcons.bars, color: Colors.white, size: 32),
        onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        },
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
      ),
      flexibleSpace: Padding(
        padding: const EdgeInsets.all(4),
        child: Image.asset(
          'assets/images/white_forest_logo_resize.webp',
        ),
      ),
      backgroundColor: Colors.brown.shade200,
    );
  }
}
