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
          // Initialize the configuration if not already done
          if (configProvider.config == null) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              configProvider.loadConfig();
            });
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return Scaffold(
            backgroundColor: Colors.brown.shade50,
            key: _key,
            appBar: getTopBar(context, _key, HomePage.routeName),
            drawer: const DrawerMobile(HomePage.routeName),
            body: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              children: [
                const HeaderCarousel(),
                const WelcomePart(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.60,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/home/${getPathImage(context)}home_page_winter.webp',
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                const DogPart(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.60,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/home/${getPathImage(context)}home_page_summer.webp',
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
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
}
