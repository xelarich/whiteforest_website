import 'package:flutter/material.dart';
import 'package:responsive/responsive.dart';
import 'package:whiteforest_website/component/footer/widget/condition.dart';
import 'package:whiteforest_website/component/footer/widget/contact_details.dart';

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
            sm: 12,
            md: 12,
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
                    'assets/images/white_forest_logo_resize.webp',
                    height: 125,
                  ),
                ),
              ),
            ),
          ),
          FlexWidget(
              sm: 12,
              md: 12,
              lg: 4,
              xl: 5,
              xxl: 5,
              xxxl: 5,
              child: const Center(child: ContactDetails())),
          FlexWidget(sm: 12, md: 12, child: const Condition()),
        ],
      ),
    );
  }
}
