import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/component/footer/footer.dart';
import 'package:whiteforest_website/component/header/header_carousel.dart';
import 'package:whiteforest_website/page/home/widget/activity_part.dart';
import 'package:whiteforest_website/page/home/widget/dog_part.dart';
import 'package:whiteforest_website/page/home/widget/musher_part.dart';
import 'package:whiteforest_website/page/home/widget/welcome_part.dart';
import 'package:whiteforest_website/provider/config_provider.dart';
import 'package:whiteforest_website/service/conf_service.dart';
import 'package:whiteforest_website/shared/utils.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  HomePage({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  ConfService confService = GetIt.I.get<ConfService>();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: ConfigProvider(),
      child: Consumer<ConfigProvider>(
        builder: (context, configProvider, child) {
          if (configProvider.config == null) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              configProvider.loadConfig();
            });
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return Scaffold(
            backgroundColor: const Color(0xFFF5F0EB),
            key: _key,
            appBar: getTopBar(context, _key, HomePage.routeName),
            drawer: const DrawerMobile(HomePage.routeName),
            body: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              children: [
                const HeaderCarousel(),
                const WelcomePart(),
                _buildFullWidthImage(
                  context,
                  'assets/images/home/${getPathImage(context)}home_page_winter.webp',
                  Colors.white,
                  const Color(0xFFF5F0EB),
                ),
                const DogPart(),
                _buildFullWidthImage(
                  context,
                  'assets/images/home/${getPathImage(context)}home_page_summer.webp',
                  const Color(0xFFF5F0EB),
                  Colors.white,
                ),
                const MusherPart(),
                const ActivityPart(),
                const Footer(),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildFullWidthImage(
    BuildContext context,
    String path,
    Color topColor,
    Color bottomColor,
  ) {
    return Container(
      height: (MediaQuery.of(context).size.height * 0.60).floorToDouble(),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: bottomColor),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            path,
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 60,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [topColor, topColor.withValues(alpha: 0)],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 80,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [bottomColor, bottomColor.withValues(alpha: 0)],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
