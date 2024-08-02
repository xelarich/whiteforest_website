import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:whiteforest_website/shared/utils/launch_contact.dart';

class SocialNetwork extends StatelessWidget {
  const SocialNetwork({super.key});

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
              'Nous suivre'.toUpperCase(),
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          const InkWell(
            onTap: launchFacebook,
            child: Padding(
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
                      "Facebook",
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
          //Add instagram
          const InkWell(
            onTap: launchInstagram,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
              child: Row(
                children: [
                  Icon(
                    LineAwesomeIcons.instagram,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Instagram",
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
          const InkWell(
            onTap: launchTripadvisor,
            child: Padding(
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
                      "Tripadvisor",
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
        ],
      ),
    );
  }
}
