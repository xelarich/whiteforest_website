import 'package:flutter/material.dart';

class HeaderAnimatedIcon extends StatefulWidget {
  const HeaderAnimatedIcon(this.icons,
      {required this.color, required this.size, Key? key})
      : super(key: key);

  final IconData icons;
  final Color color;

  final double size;

  @override
  State<HeaderAnimatedIcon> createState() => _HeaderAnimatedIconState();
}

class _HeaderAnimatedIconState extends State<HeaderAnimatedIcon>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> animationRadiusIn;
  late Animation<double> animationRadiusOut;

  final double initialRadius = 55.0;
  double radius = 0.0;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    animationRadiusIn = Tween<double>(begin: 1.0, end: 0.5).animate(
        CurvedAnimation(
            parent: _animationController,
            curve: const Interval(0.75, 1.0, curve: Curves.elasticIn)));
    animationRadiusOut = Tween<double>(begin: 0.5, end: 1.0).animate(
        CurvedAnimation(
            parent: _animationController,
            curve: const Interval(0.0, 0.25, curve: Curves.elasticOut)));

    _animationController.addListener(() {
      setState(() {
        if (_animationController.value >= 0.75 &&
            _animationController.value <= 1.0) {
          radius = animationRadiusIn.value * initialRadius;
        } else if (_animationController.value >= 0.0 &&
            _animationController.value <= 0.25) {
          radius = animationRadiusOut.value * initialRadius;
        }
      });
    });
    _animationController.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, radius),
      child: Icon(
        widget.icons,
        color: widget.color,
        size: widget.size,
      ),
    );
  }
}
