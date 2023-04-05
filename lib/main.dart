import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whiteforest_website/base_application.dart';
import 'package:whiteforest_website/dependency_injection.dart';
import 'package:whiteforest_website/page/main/main_page.dart';

void main() {
  declareServices();
  runApp(const ProviderScope(child: App()));
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'White Forest',
      theme: ThemeData(
        textTheme: GoogleFonts.carterOneTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: const BaseApplication(child: MainPage()),
    );
  }
}
