import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whiteforest_website/base_application.dart';
import 'package:whiteforest_website/dependency_injection.dart';
import 'package:whiteforest_website/page/activity/activity_page.dart';
import 'package:whiteforest_website/page/contact/contact_page.dart';
import 'package:whiteforest_website/page/home/home_page.dart';
import 'package:whiteforest_website/page/kennel/kennel_page.dart';
import 'package:whiteforest_website/page/main/base_page.dart';
import 'package:whiteforest_website/page/sales_condition/sales_condition_page.dart';
import 'package:whiteforest_website/page/team/team_page.dart';
import 'package:whiteforest_website/provider/conf_provider.dart';

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
      path: ActivityPage.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const ActivityPage();
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
    ref.watch(confProvider).getScreenSize(context);

    return MaterialApp.router(
      title: 'White Forest',
      theme: ThemeData(
        textTheme: GoogleFonts.carterOneTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}
