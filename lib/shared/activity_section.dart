import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:responsive/responsive.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ActivitySection extends StatelessWidget {
  const ActivitySection({
    required this.scrollController,
    required this.index,
    required this.title,
    required this.duration,
    required this.imagePath,
    required this.description,
    required this.prices,
    required this.infos,
    this.imageAlignment = Alignment.center,
    super.key,
  });

  final AnchorScrollController scrollController;
  final int index;
  final String title;
  final String duration;
  final String imagePath;
  final Widget description;
  final List<PriceCard> prices;
  final List<InfoCard> infos;
  final Alignment imageAlignment;

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;

    return AnchorItemWrapper(
      controller: scrollController,
      index: index,
      child: Center(
        child: Container(
        constraints: const BoxConstraints(maxWidth: 900),
        margin: EdgeInsets.symmetric(
          horizontal: isMobile ? 12 : 32,
          vertical: 16,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.brown.withValues(alpha: 0.08),
              blurRadius: 24,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero image + title overlay
            SizedBox(
              height: isMobile ? 250 : 350,
              width: double.infinity,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    alignment: imageAlignment,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withValues(alpha: 0.1),
                          Colors.black.withValues(alpha: 0.65),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 24,
                    right: 24,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Text(
                            title.toUpperCase(),
                            style: TextStyle(
                              fontSize: isMobile ? 22 : 32,
                              fontFamily: 'WickedGrit',
                              color: Colors.white,
                              height: 1.2,
                              shadows: const [
                                Shadow(
                                  color: Colors.black45,
                                  blurRadius: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFD4A24E),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                LineAwesomeIcons.clock,
                                size: 16,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                duration,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Description
            Padding(
              padding: EdgeInsets.all(isMobile ? 20 : 32),
              child: description,
            ),

            // Prices
            Padding(
              padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 4,
                        height: 24,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD4A24E),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        'Tarifs',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: prices,
                  ),
                ],
              ),
            ),
            SizedBox(height: isMobile ? 20 : 28),

            // Info cards
            Padding(
              padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 32),
              child: ResponsiveRow(
                alignment: WrapAlignment.start,
                children: infos
                    .map(
                      (info) => FlexWidget(
                        xs: 12,
                        sm: 12,
                        md: 6,
                        lg: 4,
                        xl: 4,
                        xxl: 4,
                        xxxl: 4,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: info,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
      ),
    );
  }
}

class PriceCard extends StatelessWidget {
  const PriceCard({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xFFFAF7F4),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFD4A24E).withValues(alpha: 0.3),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600,
          fontSize: 14,
          height: 1.5,
          color: Colors.brown.shade900,
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    required this.title,
    required this.content,
    this.icon = Icons.info_outline,
    super.key,
  });

  final String title;
  final Widget content;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F0EB),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 18,
                color: const Color(0xFFD4A24E),
              ),
              const SizedBox(width: 8),
              Flexible(
                child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Colors.brown.shade800,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 26),
            child: content,
          ),
        ],
      ),
    );
  }
}