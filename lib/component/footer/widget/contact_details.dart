import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              'NOS COORDONNÉES',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: _launchFacebookUrl,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
              child: Row(
                children: [
                  Icon(
                    LineAwesomeIcons.facebook_square,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "WhiteForest73",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: _launchTripadvisorUrl,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
              child: Row(
                children: [
                  Icon(
                    LineAwesomeIcons.tripadvisor,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "White Forest",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: _makePhoneCall,
            child: const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 6,
              ),
              child: Row(
                children: [
                  Icon(
                    LineAwesomeIcons.phone_volume,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "+33 6 82 75 99 26",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: _composeMail,
            child: const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 6,
              ),
              child: Row(
                children: [
                  Icon(
                    LineAwesomeIcons.at,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "moretmeleanne@gmail.com",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              MapsLauncher.launchQuery(
                  'White forest la toussuire, Fontcouverte-la-Toussuire');
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 6,
              ),
              child: Row(
                children: [
                  Icon(
                    LineAwesomeIcons.map_marker,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Le Hordon 73 300 LA TOUSSUIRE",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchFacebookUrl() async {
    Uri url =
        Uri.parse('https://www.facebook.com/profile.php?id=100088814902936');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchTripadvisorUrl() async {
    Uri url = Uri.parse(
        'https://www.tripadvisor.fr/Attraction_Review-g657856-d3842026-Reviews-White_Forest-Fontcouverte_la_Toussuire_Savoie_Auvergne_Rhone_Alpes.html');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _makePhoneCall() async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: "+33682759926",
    );
    await launchUrl(launchUri);
  }

  Future<void> _composeMail() async {
// #docregion encode-query-parameters
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'richard-alex@hotmail.fr',
      query: encodeQueryParameters(<String, String>{
        'subject': 'Example Subject & Symbols are allowed!',
      }),
    );

    await launchUrl(emailLaunchUri);
// #enddocregion encode-query-parameters
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
}
