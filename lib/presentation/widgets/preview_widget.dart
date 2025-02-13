import 'package:flutter/material.dart';

class PreviewWidget extends StatelessWidget {
  const PreviewWidget({super.key});

  static const Duration duration = Duration(seconds: 2);
  static const Curve curve = Curves.easeIn;

  @override
  Widget build(BuildContext context) {
    return const CustomFadeTransition(duration: duration, curve: curve);
  }
}

class CustomFadeTransition extends StatefulWidget {
  const CustomFadeTransition(
      {required this.duration, required this.curve, super.key});

  final Duration duration;
  final Curve curve;

  @override
  State<CustomFadeTransition> createState() => _CustomFadeTransitionState();
}

class _CustomFadeTransitionState extends State<CustomFadeTransition>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: widget.duration,
    vsync: this,
  )..repeat(reverse: true);
  late final CurvedAnimation _animation =
      CurvedAnimation(parent: _controller, curve: widget.curve);

  @override
  void didUpdateWidget(CustomFadeTransition oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.duration != widget.duration) {
      _controller
        ..duration = widget.duration
        ..repeat(reverse: true);
    }
    if (oldWidget.curve != widget.curve) {
      _animation.curve = widget.curve;
    }
  }

  @override
  void dispose() {
    _animation.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.transparent,
      child: FadeTransition(
        opacity: _animation,
        child: Center(
          child: Image(image: AssetImage('assets/intro.gif')),
        ),
      ),
    );
  }
}
