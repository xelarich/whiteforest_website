import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' hide Path;
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:responsive/responsive.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/component/drawer/drawer_mobile.dart';
import 'package:whiteforest_website/component/footer/footer.dart';
import 'package:whiteforest_website/page/contact/widget/form_contact.dart';
import 'package:whiteforest_website/shared/utils.dart';
import 'package:whiteforest_website/shared/utils/launch_contact.dart';

class ContactPage extends StatefulWidget {
  static const routeName = '/contact';

  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  static final LatLng _center = LatLng(45.25489065226392, 6.27370834350585);

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;

    return Scaffold(
      appBar: getTopBar(context, _key, ContactPage.routeName),
      key: _key,
      drawer: const DrawerMobile(ContactPage.routeName),
      backgroundColor: const Color(0xFFF5F0EB),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero banner
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.brown.shade800,
                    Colors.brown.shade600,
                    const Color(0xFF5D4037),
                  ],
                ),
              ),
              padding: EdgeInsets.symmetric(
                vertical: isMobile ? 40 : 60,
                horizontal: 24,
              ),
              child: Column(
                children: [
                  Text(
                    'CONTACTEZ-NOUS',
                    style: TextStyle(
                      fontFamily: 'WickedGrit',
                      fontSize: isMobile ? 28 : 42,
                      color: Colors.white,
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    width: 60,
                    height: 3,
                    decoration: BoxDecoration(
                      color: Colors.amber.shade300,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Une question, un devis, ou simplement envie de dire bonjour ?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: isMobile ? 14 : 17,
                      color: Colors.white.withValues(alpha: 0.85),
                      fontWeight: FontWeight.w300,
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),

            // Contact info cards + form
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 16 : 48,
                vertical: isMobile ? 24 : 48,
              ),
              child: ResponsiveRow(
                children: [
                  // Contact info side
                  FlexWidget(
                    xs: 12,
                    sm: 12,
                    md: 5,
                    lg: 4,
                    xl: 4,
                    xxl: 4,
                    xxxl: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _ContactCard(
                          icon: LineAwesomeIcons.phone_volume_solid,
                          title: 'Téléphone',
                          subtitle: '+33 6 82 75 99 26',
                          onTap: launchPhoneCall,
                        ),
                        const SizedBox(height: 16),
                        _ContactCard(
                          icon: LineAwesomeIcons.at_solid,
                          title: 'Email',
                          subtitle: 'info@whiteforest.fr',
                          onTap: launchMail,
                        ),
                        const SizedBox(height: 16),
                        _ContactCard(
                          icon: LineAwesomeIcons.map_marker_alt_solid,
                          title: 'Emplacement',
                          subtitle: 'Le Hordon\n73 300 LA TOUSSUIRE',
                          onTap: launchMap,
                        ),
                        const SizedBox(height: 24),
                        // Social row
                        Row(
                          mainAxisAlignment: isMobile
                              ? MainAxisAlignment.center
                              : MainAxisAlignment.start,
                          children: [
                            _SocialButton(
                              icon: LineAwesomeIcons.facebook_square,
                              onTap: launchFacebook,
                            ),
                            const SizedBox(width: 12),
                            _SocialButton(
                              icon: LineAwesomeIcons.instagram,
                              onTap: launchInstagram,
                            ),
                            const SizedBox(width: 12),
                            _SocialButton(
                              icon: LineAwesomeIcons.tripadvisor,
                              onTap: launchTripadvisor,
                            ),
                          ],
                        ),
                        const SizedBox(height: 24)
                      ],
                    ),
                  ),

                  // Form side
                  FlexWidget(
                    xs: 12,
                    sm: 12,
                    md: 7,
                    lg: 8,
                    xl: 8,
                    xxl: 8,
                    xxxl: 8,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: isMobile ? 40 : 0, left: isMobile ? 0 : 24),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.brown.withValues(alpha: 0.08),
                              blurRadius: 32,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(isMobile ? 20 : 32),
                        child: const FormContact(),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Map section
            Container(
              margin: EdgeInsets.symmetric(horizontal: isMobile ? 0 : 48),
              decoration: BoxDecoration(
                borderRadius: isMobile ? null : BorderRadius.circular(16),
                boxShadow: isMobile
                    ? null
                    : [
                        BoxShadow(
                          color: Colors.brown.withValues(alpha: 0.1),
                          blurRadius: 24,
                          offset: const Offset(0, 8),
                        ),
                      ],
              ),
              clipBehavior: isMobile ? Clip.none : Clip.antiAlias,
              child: SizedBox(
                height: 400,
                child: Stack(
                  children: [
                    FlutterMap(
                      options: MapOptions(
                        initialCenter: _center,
                        initialZoom: 15.0,
                        interactionOptions: const InteractionOptions(
                          flags: InteractiveFlag.none,
                        ),
                      ),
                      children: [
                        TileLayer(
                          urlTemplate:
                              'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                          userAgentPackageName: 'fr.whiteforest.website',
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              point: _center,
                              width: 60,
                              height: 60,
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: Colors.brown.shade700,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 8,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    child: const Icon(
                                      Icons.pets,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  CustomPaint(
                                    size: const Size(12, 8),
                                    painter: _TrianglePainter(
                                      color: Colors.brown.shade700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Gradient overlay top
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      height: 40,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(0xFFF5F0EB),
                              const Color(0xFFF5F0EB).withValues(alpha: 0),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: isMobile ? 0 : 48),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

class _ContactCard extends StatefulWidget {
  const _ContactCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final Future<void> Function() onTap;

  @override
  State<_ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<_ContactCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color:
                _hovered ? Colors.white : Colors.white.withValues(alpha: 0.7),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: _hovered
                  ? Colors.brown.shade200
                  : Colors.brown.withValues(alpha: 0.08),
            ),
            boxShadow: _hovered
                ? [
                    BoxShadow(
                      color: Colors.brown.withValues(alpha: 0.12),
                      blurRadius: 20,
                      offset: const Offset(0, 6),
                    ),
                  ]
                : [
                    BoxShadow(
                      color: Colors.brown.withValues(alpha: 0.04),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
          ),
          child: Row(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color:
                      _hovered ? Colors.brown.shade700 : Colors.brown.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  widget.icon,
                  color: _hovered ? Colors.white : Colors.brown.shade700,
                  size: 22,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title.toUpperCase(),
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: Colors.brown.shade400,
                        letterSpacing: 1.5,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.subtitle,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.brown.shade900,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 14,
                color: _hovered ? Colors.brown.shade600 : Colors.brown.shade200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SocialButton extends StatefulWidget {
  const _SocialButton({required this.icon, required this.onTap});

  final IconData icon;
  final Future<void> Function() onTap;

  @override
  State<_SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<_SocialButton> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: _hovered ? Colors.brown.shade700 : Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: _hovered ? Colors.brown.shade700 : Colors.brown.shade200,
            ),
            boxShadow: _hovered
                ? [
                    BoxShadow(
                      color: Colors.brown.withValues(alpha: 0.2),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ]
                : [],
          ),
          child: Icon(
            widget.icon,
            size: 24,
            color: _hovered ? Colors.white : Colors.brown.shade600,
          ),
        ),
      ),
    );
  }
}

class _TrianglePainter extends CustomPainter {
  _TrianglePainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(size.width, 0)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
