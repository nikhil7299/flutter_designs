import 'package:flutter/material.dart';

class ScaleFadeBounceAnimation extends StatefulWidget {
  const ScaleFadeBounceAnimation(
      {super.key,
      required this.child,
      this.delaySecs = 0,
      required this.durationSecs});

  final Widget child;
  final double delaySecs;
  final double durationSecs;

  @override
  State<ScaleFadeBounceAnimation> createState() =>
      _ScaleFadeBounceAnimationState();
}

class _ScaleFadeBounceAnimationState extends State<ScaleFadeBounceAnimation>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(milliseconds: (1000 * widget.durationSecs).round()),
      vsync: this,
    );

    scaleAnimation = Tween<double>(begin: 0.7, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.elasticInOut,
      ),
    )..addListener(() {
        setState(() {});
      });

    fadeAnimation = Tween<double>(begin: 0.2, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.5, 1.0, curve: Curves.easeOut),
      ),
    )..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scaleAnimation.value,
      child: Opacity(
        opacity: fadeAnimation.value,
        child: widget.child,
      ),
    );
  }
}
