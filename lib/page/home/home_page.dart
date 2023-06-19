import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whiteforest_website/component/footer/footer_content.dart';
import 'package:whiteforest_website/component/header/header_carousel.dart';
import 'package:whiteforest_website/component/topbar/top_bar_contents.dart';
import 'package:whiteforest_website/page/home/widget/activity_part.dart';
import 'package:whiteforest_website/page/home/widget/dog_part.dart';
import 'package:whiteforest_website/page/home/widget/musher_part.dart';
import 'package:whiteforest_website/page/home/widget/welcome_part.dart';

class HomePage extends ConsumerStatefulWidget {
  static const routeName = '/';

  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

@override
class HomePageState extends ConsumerState<ConsumerStatefulWidget> {
  late final ScrollController _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;

  @override
  void initState() {
    _scrollController = ScrollController();
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
    final screenSize = MediaQuery.of(context).size;

    _opacity = _scrollPosition < screenSize.height * 0.40
        ? (_scrollPosition / (screenSize.height * 0.40)) + 0.40 < 1
            ? (_scrollPosition / (screenSize.height * 0.40)) + 0.40
            : 1
        : 1;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: TopBarContent(HomePage.routeName, opacity: _opacity),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: _scrollController,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView(
                shrinkWrap: true,
                children: [
                  const HeaderCarousel(),
                  const WelcomePart(),
                  SizedBox(
                    height: screenSize.height * 0.60,
                    width: screenSize.width,
                    child: Image.asset(
                      'assets/images/home_page_1.jpeg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  const DogPart(),
                  SizedBox(
                    height: screenSize.height * 0.60,
                    width: screenSize.width,
                    child: Image.asset(
                      'assets/images/home_page_2.jpg',
                      fit: BoxFit.cover,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  const MusherPart(),
                  const ActivityPart(),
                ],
              ),
            ),
            const FooterContent(),
          ],
        ),
      ),
    );
  }
}
