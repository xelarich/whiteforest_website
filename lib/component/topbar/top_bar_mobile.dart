import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:whiteforest_website/page/home/home_page.dart';

class TopBarMobile extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const TopBarMobile({
    required this.scaffoldKey,
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        alignment: Alignment.bottomCenter,
        icon: const Icon(LineAwesomeIcons.bars_solid,
            color: Colors.white, size: 32),
        onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        },
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
      ),
      flexibleSpace: InkWell(
        onTap: () => context.go(HomePage.routeName),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Image.asset(
            'assets/images/white_forest_logo.webp',
          ),
        ),
      ),
      backgroundColor: Colors.brown.shade200,
      surfaceTintColor: Colors.brown.shade200,
    );
  }
}
