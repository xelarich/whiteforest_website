import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:responsive/responsive.dart';
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/component/footer/footer.dart';
import 'package:whiteforest_website/shared/utils.dart';

class ContactPage extends StatefulWidget {
  static const routeName = '/contact';

  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  late GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  final LatLng _center = const LatLng(45.25489065226392, 6.27370834350585);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTopBar(context, _key, ContactPage.routeName),
      key: _key,
      drawer: const DrawerMobile(ContactPage.routeName),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ResponsiveRow(
              children: [
                FlexWidget(
                  xs: 12,
                  sm: 12,
                  md: 7,
                  lg: 8,
                  xl: 8,
                  xxl: 8,
                  xxxl: 8,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.white,
                    child: const Text(
                      'Madame, Monsieur,\n\n'
                      "Merci pour l'intérêt porté à notre structure.\n\n"
                      "Si votre demande est en rapport avec les activités canirandonnée ou visite de chenil, sur la période d'août, septembre et octobre, vous pouvez m'envoyez un message sur mon numéro de portable: 06.82.75.99.26\n\n"
                      'Si vous souhaitez avoir des informations ou réserver pour cet hiver.\n'
                      "Sachez que pour le moment l'entreprise évolue, et n'est pas encore prête à prendre vos réservations.\n"
                      "Nous vous invitons à nous contacter en novembre pour avoir plus d'informations.\n\n"
                      'Sachez que nous mettons tout en œuvre pour vous proposer des activités pour cet hiver à la hauteur de vos espérances.\n\n'
                      "Merci de l'attention que vous porterez à ce mail.\n"
                      'Cordialement,\n'
                      'Méléanne',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
                /*FlexWidget(
                  xs: 12,
                  sm: 12,
                  md: 5,
                  lg: 4,
                  xl: 4,
                  xxl: 4,
                  xxxl: 4,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 24),
                          child: LineContact(
                            'Téléphone',
                            '+33 6 82 75 99 26',
                            LineAwesomeIcons.phone_volume_solid,
                            onPressed: launchPhoneCall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 24),
                          child: LineContact(
                            'Mail',
                            'info@whiteforest.fr',
                            LineAwesomeIcons.at_solid,
                            onPressed: launchMail,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 24),
                          child: LineContact(
                            'Emplacement',
                            'Le Hordon 73 300 LA TOUSSUIRE',
                            LineAwesomeIcons.map_marker_alt_solid,
                            onPressed: launchMap,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 24),
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  LineAwesomeIcons.facebook_square,
                                  size: 32,
                                ),
                                onPressed: launchFacebook,
                                color: Colors.black,
                              ),
                              IconButton(
                                icon: Icon(
                                  LineAwesomeIcons.instagram,
                                  size: 32,
                                ),
                                onPressed: launchInstagram,
                                color: Colors.black,
                              ),
                              // Add tripadvisor icon
                              IconButton(
                                icon: Icon(
                                  LineAwesomeIcons.tripadvisor,
                                  size: 32,
                                ),
                                onPressed: launchTripadvisor,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),*/
              ],
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
