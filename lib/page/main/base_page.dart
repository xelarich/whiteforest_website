import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whiteforest_website/component/footer/footer_content.dart';
import 'package:whiteforest_website/component/topbar/top_bar_contents.dart';
import 'package:whiteforest_website/provider/conf_provider.dart';
import 'package:whiteforest_website/provider/navigator_provider.dart';

class BasePage extends ConsumerStatefulWidget {
  final Widget child;
  final String routeSelected;
  final bool transparentTopBar;

  const BasePage(
      {required this.child,
      required this.routeSelected,
      this.transparentTopBar = false,
      super.key});

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends ConsumerState<BasePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

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
      appBar: TopBarContent(widget.routeSelected,
          opacity: widget.transparentTopBar ? _opacity : 1),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: _scrollController,
        child: Column(
          children: [
            widget.child,
            const FooterContent(),
          ],
        ),
      ),
    );
  }
}
