import 'dart:ui_web' as ui;

import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web/web.dart' hide Text;
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/page/contact/contact_page.dart';
import 'package:whiteforest_website/shared/utils.dart';
import 'package:whiteforest_website/shared/utils/launch_contact.dart';

class BookingPage extends StatefulWidget {
  static const routeName = '/reserver';

  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  static const _viewType = 'booking-iframe';
  static bool _registered = false;
  HTMLIFrameElement? _iframe;

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    if (!_registered) {
      ui.platformViewRegistry.registerViewFactory(_viewType, (int viewId) {
        final iframe = HTMLIFrameElement()
          ..src = 'booking_widget.html'
          ..style.border = 'none'
          ..style.width = '100%'
          ..style.height = '100%';
        _iframe = iframe;
        return iframe;
      });
      _registered = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTopBar(context, _key, BookingPage.routeName),
      key: _key,
      drawer: const DrawerMobile(BookingPage.routeName),
      onDrawerChanged: (isOpen) {
        _iframe?.style.pointerEvents = isOpen ? 'none' : 'auto';
      },
      body: const Column(
        children: [
          Expanded(child: HtmlElementView(viewType: _viewType)),
          _ContactNotice(),
        ],
      ),
    );
  }
}

class _ContactNotice extends StatelessWidget {
  const _ContactNotice();

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;
    final textStyle = TextStyle(
      fontFamily: 'Roboto',
      fontSize: isMobile ? 14 : 16,
      height: 1.5,
      color: Colors.brown.shade900,
    );

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: isMobile ? 16 : 24,
      ),
      decoration: const BoxDecoration(
        color: Color(0xFFF5F0EB),
        border: Border(top: BorderSide(color: Color(0xFFD4A24E), width: 2)),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: Column(
            children: [
              Text.rich(
                TextSpan(
                  style: textStyle,
                  children: const [
                    TextSpan(
                      text: 'Votre activité n\'est pas proposée ci-dessus ? ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          'Certaines activités ne sont pas encore ouvertes à la réservation en ligne. '
                          'Contactez White Forest pour les réserver.',
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 12,
                runSpacing: 8,
                children: [
                  _ContactButton(
                    icon: Icons.phone_outlined,
                    label: '06 82 75 99 26',
                    onPressed: launchPhoneCall,
                  ),
                  const _ContactButton(
                    icon: Icons.mail_outline,
                    label: 'info@whiteforest.fr',
                    onPressed: launchMail,
                  ),
                  _ContactButton(
                    icon: Icons.chat_bubble_outline,
                    label: 'Formulaire de contact',
                    onPressed: () => context.go(ContactPage.routeName),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ContactButton extends StatelessWidget {
  const _ContactButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 18),
      label: Text(
        label,
        style: const TextStyle(
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600,
        ),
      ),
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.brown.shade800,
        side: const BorderSide(color: Color(0xFFD4A24E)),
        minimumSize: const Size(0, 44),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
    );
  }
}
