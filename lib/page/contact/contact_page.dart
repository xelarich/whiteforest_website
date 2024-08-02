import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:responsive/responsive.dart';
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/component/footer/footer.dart';
import 'package:whiteforest_website/page/contact/widget/form_contact.dart';
import 'package:whiteforest_website/page/contact/widget/line_contact.dart';
import 'package:whiteforest_website/service/conf_service.dart';
import 'package:whiteforest_website/shared/utils.dart';
import 'package:whiteforest_website/shared/utils/launch_contact.dart';

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

  final ConfService confService = GetIt.I.get<ConfService>();

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  final LatLng _center = const LatLng(45.25489065226392, 6.27370834350585);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTopBar(context, _key, ContactPage.routeName),
      key: _key,
      drawer: const DrawerMobile(ContactPage.routeName),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.brown[50],
              child: ResponsiveRow(
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
                      color: Colors.white,
                      height: 525,
                      child: const FormContact(),
                    ),
                  ),
                  FlexWidget(
                    xs: 12,
                    sm: 12,
                    md: 5,
                    lg: 4,
                    xl: 4,
                    xxl: 4,
                    xxxl: 4,
                    child: const Padding(
                      padding: EdgeInsets.all(16),
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
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 400,
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                scrollGesturesEnabled: false,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 16.0,
                ),
                onTap: (LatLng latLng) {},
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
