import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:whiteforest_website/shared/utils/launch_contact.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              'Nos coordonnées'.toUpperCase(),
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          const InkWell(
            onTap: launchPhoneCall,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 6,
              ),
              child: Row(
                children: [
                  Icon(
                    LineAwesomeIcons.phone_volume_solid,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      '+33 6 82 75 99 26',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const InkWell(
            onTap: launchMail,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 6,
              ),
              child: Row(
                children: [
                  Icon(
                    LineAwesomeIcons.at_solid,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'info@whiteforest.fr',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const InkWell(
            onTap: launchMap,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 6,
              ),
              child: Row(
                children: [
                  Icon(
                    LineAwesomeIcons.map_marked_alt_solid,
                    color: Colors.white,
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Le Hordon 73 300 LA TOUSSUIRE',
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
}
