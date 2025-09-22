import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:responsive/responsive.dart';
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/component/footer/footer.dart';
import 'package:whiteforest_website/page/contact/widget/form_contact.dart';
import 'package:whiteforest_website/page/contact/widget/line_contact.dart';
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
                    color: Colors.white,
                    child: const Text(
                        "Madame, Monsieur,\n\n"
                        "Merci pour l'intérêt porté à nos activités. Si votre demande est en rapport avec les activités canirandonnée ou visite de chenil, sur la période d'août, septembre et octobre, vous pouvez m'envoyer un message sur mon numéro de portable : 06.82.75.99.26.\n\n"
                        "Si vous souhaitez avoir des informations ou réserver pour cet hiver, sachez que pour le moment je ne suis pas encore certaine de pouvoir travailler dans la station des Sybelles.\n\n"
                        "En effet, l'hiver dernier nous avions pour projet de rénover le bâtiment qui se trouve à côté du chenil, pour créer de nouveaux locaux plus adaptés pour les chiens, un espace culturel sur le milieu montagnard et la vie de musher, ainsi que 12 appartements pour les travailleurs de la station qui ont beaucoup de mal à se loger.\n\n"
                        "Malheureusement, après avoir demandé le PLU et nous avoir validé le projet oralement, ma surprise fut de recevoir le permis de rénover rejeté car le chenil et le bâtiment sont placés sur une zone à risque.\n\n"
                        "Nous voilà donc obligés de partir, car le bâtiment sans rénovation n'est plus vivable, et le chenil sur une zone à risque ne nous permet pas de respecter les critères juridiques.\n\n"
                        "La mairie aujourd'hui ne prend pas en compte la situation, malgré mes mails et mes appels pour essayer de trouver des solutions pour maintenir l'activité.\n\n"
                        "Alors, si vous avez le temps et souhaitez nous voir cet hiver, vous pouvez envoyer un mail à la mairie de Fontcouverte et à l'office du tourisme de La Toussuire, pour qu'ils comprennent que l'activité chien de traîneau compte aussi au sein de la station.\n\n"
                        "Je suis navrée de vous annoncer ces nouvelles, mais je préfère être transparente avec vous.\n\n"
                        "Merci de l'attention que vous porterez à ce mail.\n\n"
                        "Cordialement,\n\n"
                        "Méléanne\n\n",
                        textAlign: TextAlign.justify,),
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
