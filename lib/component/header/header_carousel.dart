import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width,
      height: screenSize.height - kToolbarHeight,
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
          Positioned.fill(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Préparez-vous pour l'aventure",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                      shadows: [
                        Shadow(
                          color: Colors.black.withValues(alpha: 0.5),
                          blurRadius: 20,
                        ),
                      ],
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
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                      letterSpacing: 2,
                      shadows: [
                        Shadow(
                          color: Colors.black.withValues(alpha: 0.4),
                          blurRadius: 12,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: screenSize.height * 0.08,
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