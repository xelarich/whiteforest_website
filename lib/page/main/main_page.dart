import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whiteforest_website/component/footer/footer_content.dart';
import 'package:whiteforest_website/component/topbar/top_bar_contents.dart';
import 'package:whiteforest_website/provider/conf_provider.dart';
import 'package:whiteforest_website/provider/navigator_provider.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends ConsumerState<MainPage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  /* final List<Menu> menuList = [
    Menu('Accueil', body: const HomePage()),
    Menu(
      'Activité',
      body: const ActivityPage(),
    ),
    Menu(
      "L'équipe",
      body: const TeamPage(),
    ),
    Menu(
      'Le chenil',
      body: const KennelPage(),
    ),
    Menu(
      'Contact',
      body: const ContactPage(),
    ),
  ];*/

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  void _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  Widget build(BuildContext context) {
    final conf = ref.watch(confProvider);
    final navigator = ref.watch(navigatorProvider);
    final screenSize = conf.screenSize;

    _opacity = _scrollPosition < screenSize.height * 0.40
        ? (_scrollPosition / (screenSize.height * 0.40)) + 0.20 < 1
            ? (_scrollPosition / (screenSize.height * 0.40)) + 0.20
            : 1
        : 1;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: TopBarContents(_opacity),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: _scrollController,
        child: Column(
          children: [
            navigator.menuList[navigator.selectedIndex].body,
            const FooterContent(),
          ],
        ),
      ),
    );
  }
}
