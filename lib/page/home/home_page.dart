import 'package:flutter/material.dart';
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/component/footer/footer.dart';
import 'package:whiteforest_website/component/header/header_carousel.dart';
import 'package:whiteforest_website/page/home/widget/activity_part.dart';
import 'package:whiteforest_website/page/home/widget/dog_part.dart';
import 'package:whiteforest_website/page/home/widget/musher_part.dart';
import 'package:whiteforest_website/page/home/widget/welcome_part.dart';
import 'package:whiteforest_website/shared/utils.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  HomePage({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Site en maintenance',
        style: TextStyle(fontSize: 48),),
      ),
    );
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
  }
}
