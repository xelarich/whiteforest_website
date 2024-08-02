import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile(
    this.title,
    this.routeSelected, {
    required this.routeName,
    super.key,
  });

  final String title;
  final String routeSelected;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: routeSelected == routeName
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.brown.shade200,
              ),
            )
          : null,
      child: ListTile(
        title: Text(title),
        onTap: () {
          context
            ..pop()
            ..go(routeName);
        },
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
      ),
    );
  }
}
