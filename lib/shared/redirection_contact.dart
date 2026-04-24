import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/page/booking/booking_page.dart';

class RedirectionContact extends StatelessWidget {
  const RedirectionContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.brown.shade700,
            Colors.brown.shade600,
          ],
        ),
      ),
      child: Column(
        children: [
          Text(
            'Prêt pour l\'aventure ?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: ResponsiveValue<double>(
                context,
                defaultValue: 24,
                conditionalValues: [
                  const Condition<double>.largerThan(
                    name: MOBILE,
                    value: 34,
                  ),
                ],
              ).value,
              color: Colors.white,
              fontFamily: 'WickedGrit',
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Réservez votre expérience dès maintenant',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white.withValues(alpha: 0.8),
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(200, 50),
              backgroundColor: const Color(0xFFD4A24E),
              foregroundColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            onPressed: () => context.go(BookingPage.routeName),
            child: const Text(
              'Réserver',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}