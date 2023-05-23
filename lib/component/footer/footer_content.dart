import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:whiteforest_website/component/footer/widget/action_text.dart';
import 'package:whiteforest_website/component/footer/widget/contact_details.dart';
import 'package:whiteforest_website/component/footer/widget/site_map.dart';

class FooterContent extends StatelessWidget {
  const FooterContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade900,
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32),
            child: Image.asset(
              'assets/images/white_forest_logo.png',
              height: 200,
            ),
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                const SiteMap(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: VerticalDivider(
                    thickness: 2,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 32, horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text(
                            'CONDITION',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: ActionText('Conditions général de vente', onTap: () {}),
                        )
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: VerticalDivider(
                    thickness: 2,
                    color: Colors.white,
                  ),
                ),
                const ContactDetails(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
