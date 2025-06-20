import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/dependency_injection.dart';
import 'package:whiteforest_website/firebase_options.dart';
import 'package:whiteforest_website/page/contact/contact_page.dart';
import 'package:whiteforest_website/page/home/home_page.dart';
import 'package:whiteforest_website/page/kennel/kennel_page.dart';
import 'package:whiteforest_website/page/sales_condition/sales_condition_page.dart';
import 'package:whiteforest_website/page/summer/activity/activity_summer_page.dart';
import 'package:whiteforest_website/page/summer/group/group_summer_page.dart';
import 'package:whiteforest_website/page/team/team_page.dart';
import 'package:whiteforest_website/page/winter/activity/activity_winter_page.dart';
import 'package:whiteforest_website/page/winter/group/group_winter_page.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
  await remoteConfig.setConfigSettings(
    RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 10),
      minimumFetchInterval: const Duration(hours: 1),
    ),
  );
  await remoteConfig.fetchAndActivate();

  declareServices();

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
      pageBuilder: (context, state) {
        return buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: HomePage(),
        );
      },
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
          ),
        );
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
          ),
        );
      },
    ),
    GoRoute(
      path: GroupSummerPage.routeName,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const GroupSummerPage(),
        );
      },
    ),
    GoRoute(
      path: GroupWinterPage.routeName,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const GroupWinterPage(),
        );
      },
    ),
    GoRoute(
      path: TeamPage.routeName,
      pageBuilder: (BuildContext context, GoRouterState state) =>
          buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const TeamPage(),
      ),
    ),
    GoRoute(
      path: KennelPage.routeName,
      pageBuilder: (BuildContext context, GoRouterState state) =>
          buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const KennelPage(),
      ),
    ),
    GoRoute(
      path: ContactPage.routeName,
      pageBuilder: (BuildContext context, GoRouterState state) =>
          buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: const ContactPage(),
      ),
    ),
    GoRoute(
      path: SalesConditionPage.routeName,
      pageBuilder: (BuildContext context, GoRouterState state) =>
          buildPageWithDefaultTransition(
        context: context,
        state: state,
        child: SalesConditionPage(),
      ),
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
            const Breakpoint(start: 451, end: 870, name: TABLET),
            const Breakpoint(start: 871, end: 1920, name: DESKTOP),
            const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
          ],
        ),
        theme: ThemeData(
          textTheme: GoogleFonts.carterOneTextTheme(),
          tabBarTheme: TabBarThemeData(
            labelStyle: GoogleFonts.carterOne(),
            unselectedLabelStyle: GoogleFonts.carterOne(),
          ),
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: _router,
      ),
    );
  }
}
