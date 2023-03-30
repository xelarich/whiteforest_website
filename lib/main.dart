import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/base_application.dart';
import 'package:whiteforest_website/dependency_injection.dart';
import 'package:whiteforest_website/page/home/home_page.dart';

void main() {
  declareServices();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'White Forest',
      theme: ThemeData(
        //textTheme: GoogleFonts.oswaldTextTheme(),
        textTheme: GoogleFonts.carterOneTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        defaultScale: false,
        breakpoints: [
          const ResponsiveBreakpoint.resize(480, name: MOBILE),
          const ResponsiveBreakpoint.resize(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
        ],
      ),
      debugShowCheckedModeBanner: false,
      home: const BaseApplication(child: HomePage()),
    );
  }
}
