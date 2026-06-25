import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CardHome extends StatefulWidget {
  final String title;
  final String description;
  final String imagePath;
  final Alignment alignment;
  final Function onTap;

  const CardHome(
    this.title,
    this.description,
    this.imagePath, {
    required this.onTap,
    this.alignment = Alignment.center,
    super.key,
  });

  @override
  State<CardHome> createState() => _CardHomeState();
}

class _CardHomeState extends State<CardHome> {
  bool _hovered = false;
  Offset _mouseOffset = Offset.zero;

  static const double _parallaxIntensity = 12.0;
  static const double _imageScale = 1.15;

  void _onHover(PointerEvent event, BoxConstraints constraints) {
    final dx = (event.localPosition.dx / constraints.maxWidth - 0.5) * 2;
    final dy = (event.localPosition.dy / constraints.maxHeight - 0.5) * 2;
    setState(() {
      _hovered = true;
      _mouseOffset = Offset(dx, dy);
    });
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;
    final showContent = isMobile || _hovered;

    final parallaxX = _hovered ? -_mouseOffset.dx * _parallaxIntensity : 0.0;
    final parallaxY = _hovered ? -_mouseOffset.dy * _parallaxIntensity : 0.0;

    return LayoutBuilder(
      builder: (context, constraints) {
        return MouseRegion(
          onHover: isMobile ? null : (event) => _onHover(event, constraints),
          onExit: isMobile
              ? null
              : (_) => setState(() {
                    _hovered = false;
                    _mouseOffset = Offset.zero;
                  }),
          child: GestureDetector(
            onTap: () => widget.onTap(),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeOut,
              transform: Matrix4.identity()
                ..translate(0.0, _hovered ? -6.0 : 0.0, 0.0),
              width: double.infinity,
              height: isMobile ? 280 : 420,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(
                      alpha: _hovered ? 0.3 : 0.12,
                    ),
                    blurRadius: _hovered ? 32 : 16,
                    offset: Offset(0, _hovered ? 16 : 8),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    // Image (parallax on desktop only)
                    if (isMobile)
                      Image.asset(
                        widget.imagePath,
                        fit: BoxFit.cover,
                        alignment: widget.alignment,
                      )
                    else
                      AnimatedContainer(
                        duration: Duration(
                          milliseconds: _hovered ? 100 : 400,
                        ),
                        curve: Curves.easeOut,
                        transform: Matrix4.identity()
                          ..translate(parallaxX, parallaxY, 0.0)
                          ..scale(_imageScale),
                        transformAlignment: Alignment.center,
                        child: Image.asset(
                          widget.imagePath,
                          fit: BoxFit.cover,
                          alignment: widget.alignment,
                        ),
                      ),

                    // Gradient overlay
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withValues(
                              alpha: showContent ? 0.75 : 0.5,
                            ),
                          ],
                          stops: [showContent ? 0.15 : 0.4, 1.0],
                        ),
                      ),
                    ),

                    // Content
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              widget.title,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                height: 1.2,
                                shadows: [
                                  Shadow(
                                    color: Colors.black45,
                                    blurRadius: 12,
                                  ),
                                ],
                              ),
                            ),
                            if (isMobile)
                              _buildDetails()
                            else
                              AnimatedCrossFade(
                                duration: const Duration(milliseconds: 250),
                                crossFadeState: _hovered
                                    ? CrossFadeState.showSecond
                                    : CrossFadeState.showFirst,
                                firstChild: const SizedBox(height: 0),
                                secondChild: _buildDetails(),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Text(
          widget.description,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 13,
            fontFamily: 'Roboto',
            color: Colors.white.withValues(alpha: 0.9),
            fontWeight: FontWeight.w300,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 14),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 7,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFFD4A24E),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Découvrir',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.5,
                ),
              ),
              SizedBox(width: 4),
              Icon(
                Icons.arrow_forward_rounded,
                size: 14,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
