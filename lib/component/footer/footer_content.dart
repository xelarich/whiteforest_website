import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whiteforest_website/component/footer/widget/condition.dart';
import 'package:whiteforest_website/component/footer/widget/contact_details.dart';

class FooterContent extends ConsumerWidget {
  const FooterContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.grey.shade900,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
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
                  'assets/images/white_forest_logo.png',
                  height: 125,
                ),
              ),
            ),
          ),
          const ContactDetails(),
          const Condition(),
        ],
      ),
    );
  }
}
