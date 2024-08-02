import 'package:flutter/material.dart';
import 'package:responsive/responsive.dart';
import 'package:whiteforest_website/component/footer/widget/condition.dart';
import 'package:whiteforest_website/component/footer/widget/contact_details.dart';
import 'package:whiteforest_website/component/footer/widget/social_network.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade900,
      width: double.infinity,
      child: ResponsiveRow(
        alignment: WrapAlignment.center,
        children: [
          FlexWidget(
            xs: 12,
            sm: 12,
            md: 12,
            lg: 3,
            xl: 3,
            xxl: 3,
            xxxl: 3,
            child: Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 16),
              child: Container(
                padding: const EdgeInsets.all(48),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade50,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset(
                    'assets/images/white_forest_logo.webp',
                    height: 125,
                  ),
                ),
              ),
            ),
          ),
          FlexWidget(
            xs: 12,
            sm: 12,
            md: 12,
            lg: 3,
            xl: 3,
            xxl: 3,
            xxxl: 3,
            child: const Center(
              child: ContactDetails(),
            ),
          ),
          FlexWidget(
            xs: 12,
            sm: 12,
            md: 12,
            lg: 2,
            xl: 2,
            xxl: 2,
            xxxl: 2,
            child: const Center(
              child: SocialNetwork(),
            ),
          ),
          FlexWidget(
            xs: 12,
            sm: 12,
            md: 12,
            lg: 4,
            xl: 4,
            xxl: 4,
            xxxl: 4,
            child: const Condition(),
          ),
        ],
      ),
    );
  }
}
