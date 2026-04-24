import 'package:flutter/material.dart';
import 'package:responsive/responsive.dart';
import 'package:whiteforest_website/shared/utils.dart';

class MusherPart extends StatelessWidget {
  const MusherPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 32),
      child: Column(
        children: [
          const Text(
            'Et venez à la rencontre de nos',
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const Text(
            'Mushers',
            style: TextStyle(fontSize: 38, fontFamily: 'WickedGrit'),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Container(
            width: 50,
            height: 3,
            decoration: BoxDecoration(
              color: const Color(0xFFD4A24E),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 32),
          ResponsiveRow(
            alignment: WrapAlignment.center,
            children: [
              FlexWidget(
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
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
        ],
      ),
    );
  }
}