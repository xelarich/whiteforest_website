import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whiteforest_website/component/footer/footer_content.dart';
import 'package:whiteforest_website/provider/conf_provider.dart';
import 'package:whiteforest_website/menu.dart';
import 'package:whiteforest_website/page/home/widget/home_page_content.dart';
import 'package:whiteforest_website/shared/menu_entry.dart';
import 'package:whiteforest_website/shared/top_bar_contents.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  final List<Menu> menuList = [
    Menu('Accueil', body: const HomePageContent(), selected: true),
    Menu('Activité',
        body: const Center(
          child: Text('Activité'),
        )),
    Menu('Le chenil',
        body: const Center(
          child: Text('Le chenil'),
        )),
    Menu('Contact',
        body: const Center(
          child: Text('Contact'),
        )),
  ];

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
            const HomePageContent(),
            const FooterContent(),
          ],
        ),
      ),
    );
  }
}
