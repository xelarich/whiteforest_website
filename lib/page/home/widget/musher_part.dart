import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/shared/utils.dart';

class MusherPart extends StatelessWidget {
  const MusherPart({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveBreakpoints.of(context).isDesktop;
    final imagePath =
        'assets/images/profile/${getPathImage(context)}meleanne.webp';

    return isDesktop
        ? _buildDesktop(imagePath)
        : _buildMobile(context, imagePath);
  }

  Widget _buildDesktop(String imagePath) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 540,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 80,
                vertical: 80,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Et venez à la rencontre de nos',
                    style: TextStyle(
                      fontSize: 22,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Mushers',
                    style: TextStyle(
                      fontSize: 76,
                      fontFamily: 'WickedGrit',
                      height: 1.0,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    width: 64,
                    height: 3,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD4A24E),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    'Méléanne',
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'MUSHEUSE',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      letterSpacing: 3,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMobile(BuildContext context, String imagePath) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 56, horizontal: 24),
      child: Column(
        children: [
          const Text(
            'Et venez à la rencontre de nos',
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const Text(
            'Mushers',
            style: TextStyle(fontSize: 44, fontFamily: 'WickedGrit'),
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
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              height: 280,
              width: double.infinity,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Méléanne',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 4),
          const Text(
            'MUSHEUSE',
            style: TextStyle(
              fontSize: 11,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              color: Colors.black54,
              letterSpacing: 3,
            ),
          ),
        ],
      ),
    );
  }
}
