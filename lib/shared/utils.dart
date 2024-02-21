import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/component/topbar/top_bar_mobile.dart';
import 'package:whiteforest_website/component/topbar/top_bar_web.dart';

PreferredSizeWidget getTopBar(
    BuildContext context, GlobalKey<ScaffoldState> key, String routeName) {
  return ResponsiveValue<PreferredSizeWidget>(
    context,
    defaultValue: TopBarMobile(scaffoldKey: key),
    conditionalValues: [
      Condition<PreferredSizeWidget>.largerThan(
          name: TABLET,
          value: TopBarWeb(
            routeName,
          ))
    ],
  ).value!;
}

String getPathImage(BuildContext context) {
  return ResponsiveValue<String>(
    context,
    defaultValue: 'web/',
    conditionalValues: [
      Condition<String>.smallerThan(
          name: TABLET, value: 'mobile/'),
    ],
  ).value!;
}
