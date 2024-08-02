import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/page/contact/contact_page.dart';

class RedirectionContact extends StatelessWidget {
  const RedirectionContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Text(
            'Une information ? Un devis ? Une réservation ?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: ResponsiveValue<double>(
                context,
                defaultValue: 28,
                conditionalValues: [
                  const Condition<double>.largerThan(
                    name: MOBILE,
                    value: 38,
                  ),
                ],
              ).value,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(180, 50),
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              onPressed: () => context.go(ContactPage.routeName),
              child: const Text(
                'Contactez-nous',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
