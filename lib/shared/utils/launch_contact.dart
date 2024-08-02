import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchFacebook() async {
  Uri url =
      Uri.parse('https://www.facebook.com/profile.php?id=100088814902936');
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

Future<void> launchInstagram() async {
  Uri url = Uri.parse('https://www.instagram.com/whiteforest73/');
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

Future<void> launchTripadvisor() async {
  Uri url = Uri.parse(
    'https://www.tripadvisor.fr/Attraction_Review-g657856-d3842026-Reviews-White_Forest-Fontcouverte_la_Toussuire_Savoie_Auvergne_Rhone_Alpes.html',
  );
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

Future<void> launchPhoneCall() async {
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: '+33682759926',
  );
  await launchUrl(launchUri);
}

Future<void> launchMail() async {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'info@whiteforest.fr',
    query: encodeQueryParameters(<String, String>{
      'subject': 'White Forest - Contact',
    }),
  );

  await launchUrl(emailLaunchUri);
}

Future<void> launchMap() async {
  await MapsLauncher.launchQuery(
    'White forest la toussuire, Fontcouverte-la-Toussuire',
  );
}

String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map(
        (MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
      )
      .join('&');
}
