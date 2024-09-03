import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile(this.title,
      this.routeSelected, {
        required this.routeName,
        this.isSubMenu = false,
        super.key,
      });

  final String title;
  final String routeSelected;
  final String routeName;

  final bool isSubMenu;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: isSubMenu ? SizedBox() : null,
      title: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: routeName == routeSelected ? Colors.brown.shade200.withOpacity(
              0.4) : null,
        ),
        child: Text(
          title,
        ),
      ),
      onTap: () {
        context
          ..pop()
          ..go(routeName);
      },
    );
  }
}
