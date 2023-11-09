import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/page/activity/group/activity_group_page.dart';
import 'package:whiteforest_website/page/activity/summer/activity_summer_page.dart';
import 'package:whiteforest_website/page/activity/winter/activity_winter_page.dart';
import 'package:whiteforest_website/page/contact/contact_page.dart';
import 'package:whiteforest_website/page/home/home_page.dart';
import 'package:whiteforest_website/page/kennel/kennel_page.dart';
import 'package:whiteforest_website/page/sales_condition/sales_condition_page.dart';
import 'package:whiteforest_website/page/team/team_page.dart';

void main() {
  runApp(const App());
}

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return NoTransitionPage<T>(
    key: state.pageKey,
    child: child,
  );
}

final GoRouter _router = GoRouter(
  initialLocation: HomePage.routeName,
  routes: <RouteBase>[
    GoRoute(
      path: HomePage.routeName,
      pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context, state: state, child: HomePage()),
    ),
    GoRoute(
      path: ActivityWinterPage.routeName,
      pageBuilder: (BuildContext context, GoRouterState state) {
        final Map<String, int>? extra = state.extra as Map<String, int>?;
        return buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: ActivityWinterPage(
              indexAnchor: extra == null
                  ? null
                  : extra[ActivityWinterPage.indexAnchorKey]!,
            ));
      },
    ),
    GoRoute(
      path: ActivitySummerPage.routeName,
      pageBuilder: (BuildContext context, GoRouterState state) {
        final Map<String, int>? extra = state.extra as Map<String, int>?;
        return buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: ActivitySummerPage(
              indexAnchor: extra == null
                  ? null
                  : extra[ActivitySummerPage.indexAnchorKey]!,
            ));
      },
    ),
    GoRoute(
      path: ActivityGroupPage.routeName,
      pageBuilder: (BuildContext context, GoRouterState state) {
        final Map<String, int>? extra = state.extra as Map<String, int>?;
        return buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: ActivityGroupPage(
              indexAnchor: extra == null
                  ? null
                  : extra[ActivityGroupPage.indexAnchorKey]!,
            ));
      },
    ),
    GoRoute(
        path: TeamPage.routeName,
        pageBuilder: (BuildContext context, GoRouterState state) =>
            buildPageWithDefaultTransition(
                context: context, state: state, child: const TeamPage())),
    GoRoute(
      path: KennelPage.routeName,
      pageBuilder: (BuildContext context, GoRouterState state) =>
          buildPageWithDefaultTransition(
              context: context, state: state, child: const KennelPage()),
    ),
    GoRoute(
      path: ContactPage.routeName,
      pageBuilder: (BuildContext context, GoRouterState state) =>
          buildPageWithDefaultTransition(
              context: context, state: state, child: ContactPage()),
    ),
    GoRoute(
      path: SalesConditionPage.routeName,
      pageBuilder: (BuildContext context, GoRouterState state) =>
          buildPageWithDefaultTransition(
              context: context, state: state, child: SalesConditionPage()),
    ),
  ],
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Portal(
      child: MaterialApp.router(
        title: 'White Forest',
        builder: (context, child) => ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: [
            const Breakpoint(start: 0, end: 450, name: MOBILE),
            const Breakpoint(start: 451, end: 800, name: TABLET),
            const Breakpoint(start: 801, end: 1920, name: DESKTOP),
            const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
          ],
        ),
        theme: ThemeData(
          textTheme: GoogleFonts.carterOneTextTheme(),
          tabBarTheme: TabBarTheme(
              labelStyle: GoogleFonts.carterOne(),
              unselectedLabelStyle: GoogleFonts.carterOne()),
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: _router,
      ),
    );
  }
}
