import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/component/header/header_image.dart';
import 'package:whiteforest_website/shared/utils.dart';

class HeaderCarousel extends StatefulWidget {
  const HeaderCarousel({super.key});

  @override
  State<HeaderCarousel> createState() => _HeaderCarouselState();
}

class _HeaderCarouselState extends State<HeaderCarousel> {
  final CarouselSliderController _controller = CarouselSliderController();

  var imageIndex = 0;

  static const _titleShadow = Shadow(
    color: Color(0x80000000),
    blurRadius: 20,
  );

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;
    final screenSize = MediaQuery.of(context).size;
    final heroHeight = screenSize.height - kToolbarHeight;

    return SizedBox(
      width: screenSize.width,
      height: heroHeight,
      child: Stack(
        children: [
          Positioned.fill(
            child: CarouselSlider(
              items: [
                HeaderImage(
                  'assets/images/header/${getPathImage(context)}header_winter.webp',
                ),
                HeaderImage(
                  'assets/images/header/${getPathImage(context)}header_summer.webp',
                ),
              ],
              carouselController: _controller,
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 10),
                autoPlayAnimationDuration: const Duration(seconds: 2),
                viewportFraction: 1,
                height: screenSize.height,
                scrollPhysics: const NeverScrollableScrollPhysics(),
                onPageChanged: (index, _) {
                  setState(() {
                    imageIndex = index;
                  });
                },
              ),
            ),
          ),

          // Gradient overlay on desktop for editorial readability
          if (!isMobile)
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [Colors.transparent, Color(0x40000000)],
                    stops: [0.4, 1.0],
                  ),
                ),
              ),
            ),

          // Desktop: editorial bottom-left title
          if (!isMobile) ...[
            Positioned(
              top: 28,
              right: 56,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 24,
                    height: 1,
                    color: Colors.white.withValues(alpha: 0.6),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'EST. 2018 · SAVOIE',
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.8),
                      fontSize: 11,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 3,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 100,
              left: 64,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Préparez-vous pour',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                      height: 1.0,
                      shadows: const [_titleShadow],
                    ),
                  ),
                  Text(
                    "l'aventure",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                      height: 1.0,
                      shadows: const [_titleShadow],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 64,
                    height: 2,
                    color: const Color(0xFFD4A24E),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Chiens de traineau en Savoie',
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.9),
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                      letterSpacing: 2,
                      shadows: const [
                        Shadow(color: Color(0x66000000), blurRadius: 12),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],

          // Mobile: centered title
          if (isMobile)
            Positioned.fill(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Préparez-vous pour l'aventure",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          shadows: const [_titleShadow],
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: 60,
                        height: 3,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD4A24E),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Chiens de traineau en Savoie',
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.85),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w300,
                          letterSpacing: 2,
                          shadows: const [
                            Shadow(
                              color: Color(0x66000000),
                              blurRadius: 12,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          // Carousel dots
          Positioned(
            bottom: screenSize.height * 0.04,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(2, (index) {
                final isActive = imageIndex == index;
                return GestureDetector(
                  onTap: () => _controller.animateToPage(index),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: isActive ? 32 : 12,
                    height: 4,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: isActive
                          ? const Color(0xFFD4A24E)
                          : Colors.white.withValues(alpha: 0.5),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
