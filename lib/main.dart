import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whiteforest_website/dependency_injection.dart';
import 'package:whiteforest_website/page/activity/group/activity_group_page.dart';
import 'package:whiteforest_website/page/activity/summer/activity_summer_page.dart';
import 'package:whiteforest_website/page/activity/winter/activity_winter_page.dart';
import 'package:whiteforest_website/page/contact/contact_page.dart';
import 'package:whiteforest_website/page/home/home_page.dart';
import 'package:whiteforest_website/page/kennel/kennel_page.dart';
import 'package:whiteforest_website/page/sales_condition/sales_condition_page.dart';
import 'package:whiteforest_website/page/team/team_page.dart';

void main() {
  declareServices();
  runApp(const ProviderScope(child: App()));
}

final GoRouter _router = GoRouter(
  initialLocation: HomePage.routeName,
  routes: <RouteBase>[
    GoRoute(
      path: HomePage.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: ActivityWinterPage.routeName,
      builder: (BuildContext context, GoRouterState state) {
        final Map<String, int>? extra = state.extra as Map<String, int>?;
        return ActivityWinterPage(
          indexAnchor:
              extra == null ? null : extra[ActivityWinterPage.indexAnchorKey]!,
        );
      },
    ),
    GoRoute(
      path: ActivitySummerPage.routeName,
      builder: (BuildContext context, GoRouterState state) {
        final Map<String, int>? extra = state.extra as Map<String, int>?;
        return ActivitySummerPage(
          indexAnchor:
              extra == null ? null : extra[ActivitySummerPage.indexAnchorKey]!,
        );
      },
    ),
    GoRoute(
      path: ActivityGroupPage.routeName,
      builder: (BuildContext context, GoRouterState state) {
        final Map<String, int>? extra = state.extra as Map<String, int>?;
        return ActivityGroupPage(
          indexAnchor:
              extra == null ? null : extra[ActivityGroupPage.indexAnchorKey],
        );
      },
    ),
    GoRoute(
      path: TeamPage.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const TeamPage();
      },
    ),
    GoRoute(
      path: KennelPage.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const KennelPage();
      },
    ),
    GoRoute(
      path: ContactPage.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const ContactPage();
      },
    ),
    GoRoute(
      path: SalesConditionPage.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const SalesConditionPage();
      },
    ),
  ],
);

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Portal(
      child: MaterialApp.router(
        title: 'White Forest',
        theme: ThemeData(
          textTheme: GoogleFonts.carterOneTextTheme(),
          tabBarTheme: TabBarTheme(
              labelStyle: GoogleFonts.carterOne(),
              unselectedLabelStyle: GoogleFonts.carterOne()),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: _router,
      ),
    );
  }
}
