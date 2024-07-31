import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/component/footer/footer.dart';
import 'package:whiteforest_website/page/contact/widget/form_contact.dart';
import 'package:whiteforest_website/service/conf_service.dart';
import 'package:whiteforest_website/shared/utils.dart';

class ContactPage extends StatefulWidget {
  static const routeName = '/contact';

  ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final ConfService confService = GetIt.I.get<ConfService>();

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  late final GoogleMapController mapController;

  final LatLng _center = const LatLng(45.25489065226392, 6.27370834350585);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTopBar(context, _key, ContactPage.routeName),
      key: _key,
      drawer: const DrawerMobile(ContactPage.routeName),
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 70,
                color: Colors.brown.shade50,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(32),
                    child: const FormContact(),
                  ),

                ],
              ),

            ],
          ),

          const Footer(),
        ],
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
  }
}
