import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whiteforest_website/component/footer/widget/condition.dart';
import 'package:whiteforest_website/component/footer/widget/contact_details.dart';
import 'package:whiteforest_website/component/footer/widget/site_map.dart';

class FooterContent extends ConsumerWidget {
  const FooterContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.grey.shade900,
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Container(
              padding: const EdgeInsets.all(48),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade50,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset(
                  'assets/images/white_forest_logo.png',
                  height: 125,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: _launchFacebookUrl,
                iconSize: 32,
                hoverColor: Colors.black,
                icon: const Icon(
                  LineAwesomeIcons.facebook_square,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: _launchTripadvisorUrl,
                iconSize: 32,
                hoverColor: Colors.black,
                icon: const Icon(
                  LineAwesomeIcons.tripadvisor,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SiteMap(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: VerticalDivider(
                    thickness: 2,
                    color: Colors.white,
                  ),
                ),
                Condition(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: VerticalDivider(
                    thickness: 2,
                    color: Colors.white,
                  ),
                ),
                ContactDetails(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchFacebookUrl() async {
    Uri url = Uri.parse('https://www.facebook.com/profile.php?id=100088814902936');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchTripadvisorUrl() async {
    Uri url = Uri.parse('https://www.tripadvisor.fr/Attraction_Review-g657856-d3842026-Reviews-White_Forest-Fontcouverte_la_Toussuire_Savoie_Auvergne_Rhone_Alpes.html');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
