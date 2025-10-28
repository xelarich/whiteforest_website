import 'package:flutter/material.dart';
import 'package:responsive/responsive.dart';
import 'package:whiteforest_website/shared/utils.dart';

class MusherPart extends StatelessWidget {
  const MusherPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Et venez à la rencontre de nos',
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Mushers',
                style: TextStyle(fontSize: 38, fontFamily: 'WickedGrit'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ResponsiveRow(
              alignment: WrapAlignment.center,
              children: [
                FlexWidget(
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    elevation: 8,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(16)),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/profile/${getPathImage(context)}meleanne.webp',
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Méléanne',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
