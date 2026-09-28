import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/page/booking/booking_page.dart';
import 'package:whiteforest_website/page/contact/contact_page.dart';
import 'package:whiteforest_website/page/sales_condition/sales_condition_page.dart';
import 'package:whiteforest_website/page/summer/activity/activity_summer_page.dart';
import 'package:whiteforest_website/page/summer/group/group_summer_page.dart';
import 'package:whiteforest_website/page/winter/activity/activity_winter_page.dart';
import 'package:whiteforest_website/page/winter/group/group_winter_page.dart';
import 'package:whiteforest_website/shared/utils/launch_contact.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  static const _ink = Color(0xFF1F1A14);
  static const _accent = Color(0xFFB8895A);

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;
    final isDesktop = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    final columns = [
      _FooterColumn(
        title: 'CONTACT',
        links: [
          const _FooterLink(
            label: '06 82 75 99 26',
            icon: LineAwesomeIcons.phone_solid,
            onTap: launchPhoneCall,
          ),
          const _FooterLink(
            label: 'info@whiteforest.fr',
            icon: LineAwesomeIcons.envelope,
            onTap: launchMail,
          ),
          const _FooterLink(
            label: 'Le Hordon\n73300 La Toussuire',
            icon: LineAwesomeIcons.map_marker_solid,
            onTap: launchMap,
          ),
        ],
      ),
      _FooterColumn(
        title: 'EXPLORER',
        links: [
          _FooterLink(
            label: 'Activités hiver',
            onTap: () => context.go(ActivityWinterPage.routeName),
          ),
          _FooterLink(
            label: 'Activités été',
            onTap: () => context.go(ActivitySummerPage.routeName),
          ),
          _FooterLink(
            label: 'Groupes / CE hiver',
            onTap: () => context.go(GroupWinterPage.routeName),
          ),
          _FooterLink(
            label: 'Groupes / CE été',
            onTap: () => context.go(GroupSummerPage.routeName),
          ),
          _FooterLink(
            label: 'Réserver',
            onTap: () => context.go(BookingPage.routeName),
          ),
          _FooterLink(
            label: 'Nous contacter',
            onTap: () => context.go(ContactPage.routeName),
          ),
        ],
      ),
      const _FooterColumn(
        title: 'NOUS SUIVRE',
        links: [
          _FooterLink(
            label: 'Facebook',
            icon: LineAwesomeIcons.facebook_f,
            onTap: launchFacebook,
          ),
          _FooterLink(
            label: 'Instagram',
            icon: LineAwesomeIcons.instagram,
            onTap: launchInstagram,
          ),
          _FooterLink(
            label: 'Tripadvisor',
            icon: LineAwesomeIcons.tripadvisor,
            onTap: launchTripadvisor,
          ),
        ],
      ),
    ];

    return Container(
      width: double.infinity,
      color: _ink,
      padding: EdgeInsets.fromLTRB(
        isMobile ? 24 : 80,
        isMobile ? 64 : 96,
        isMobile ? 24 : 80,
        32,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 1, color: _accent.withValues(alpha: 0.4)),
              SizedBox(height: isMobile ? 48 : 72),
              if (isDesktop)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(flex: 4, child: _Brand()),
                    for (final column in columns)
                      Expanded(flex: 2, child: column),
                  ],
                )
              else
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _Brand(),
                    for (final column in columns) ...[
                      const SizedBox(height: 40),
                      column,
                    ],
                  ],
                ),
              SizedBox(height: isMobile ? 56 : 88),
              Container(height: 1, color: Colors.white.withValues(alpha: 0.12)),
              const SizedBox(height: 20),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 24,
                runSpacing: 8,
                children: [
                  Text(
                    '© ${DateTime.now().year} White Forest · Chiens de traineau',
                    style: _sans(
                      size: 12,
                      color: Colors.white.withValues(alpha: 0.6),
                    ),
                  ),
                  _FooterLink(
                    label: 'Conditions générales de vente',
                    size: 12,
                    onTap: () => context.go(SalesConditionPage.routeName),
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

TextStyle _sans({
  double size = 14,
  FontWeight weight = FontWeight.w400,
  Color color = Colors.white,
  double? letterSpacing,
  double? height,
}) {
  return GoogleFonts.manrope(
    fontSize: size,
    fontWeight: weight,
    color: color,
    letterSpacing: letterSpacing,
    height: height,
  );
}

class _Brand extends StatelessWidget {
  const _Brand();

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;
    final serif = GoogleFonts.cormorantGaramond(
      fontSize: isMobile ? 44 : 56,
      color: Colors.white,
      fontWeight: FontWeight.w400,
      height: 1,
    );

    return Padding(
      padding: const EdgeInsets.only(right: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              style: serif,
              children: [
                const TextSpan(text: 'White '),
                TextSpan(
                  text: 'Forest.',
                  style: serif.copyWith(
                    color: Footer._accent,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 320),
            child: Text(
              "35 chiens de traineau, en été comme en hiver, face aux Aiguilles d'Arves.",
              style: _sans(
                size: 15,
                color: Colors.white.withValues(alpha: 0.7),
                height: 1.7,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'LA TOUSSUIRE · SAVOIE',
            style: _sans(
              size: 11,
              weight: FontWeight.w600,
              letterSpacing: 3,
              color: Footer._accent,
            ),
          ),
        ],
      ),
    );
  }
}

class _FooterColumn extends StatelessWidget {
  const _FooterColumn({required this.title, required this.links});

  final String title;
  final List<_FooterLink> links;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: _sans(
            size: 11,
            weight: FontWeight.w600,
            letterSpacing: 3,
            color: Colors.white.withValues(alpha: 0.6),
          ),
        ),
        const SizedBox(height: 16),
        Container(width: 24, height: 1, color: Footer._accent),
        const SizedBox(height: 12),
        ...links,
      ],
    );
  }
}

class _FooterLink extends StatefulWidget {
  const _FooterLink({
    required this.label,
    required this.onTap,
    this.icon,
    this.size = 14,
  });

  final String label;
  final VoidCallback onTap;
  final IconData? icon;
  final double size;

  @override
  State<_FooterLink> createState() => _FooterLinkState();
}

class _FooterLinkState extends State<_FooterLink> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final color = _hovered
        ? Footer._accent
        : Colors.white.withValues(alpha: 0.9);

    return Semantics(
      link: true,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => _hovered = true),
        onExit: (_) => setState(() => _hovered = false),
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: widget.onTap,
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 36),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.icon != null) ...[
                    Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Icon(widget.icon, size: 18, color: color),
                    ),
                    const SizedBox(width: 10),
                  ],
                  Flexible(
                    child: AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 200),
                      style: _sans(
                        size: widget.size,
                        color: color,
                        height: 1.5,
                      ),
                      child: Text(widget.label),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
