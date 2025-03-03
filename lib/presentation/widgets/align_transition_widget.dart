import 'package:flutter/material.dart';

class AlignTransitionWidget extends StatefulWidget {
  const AlignTransitionWidget({super.key});

  @override
  createState() => _AlignTransitionWidgetState();
}

class _AlignTransitionWidgetState extends State<AlignTransitionWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<AlignmentGeometry> _animation = Tween<AlignmentGeometry>(
    begin: Alignment.bottomLeft,
    end: Alignment.bottomRight,
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.decelerate));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Theme.of(context).brightness;
    return ColoredBox(
      color: Colors.transparent,
      child: AlignTransition(
        alignment: _animation,
        child: Image(
          image: AssetImage(
            Theme.of(context).brightness == Brightness.light
                ? 'assets/run.gif'
                : 'assets/run_dark.gif',
          ),
        ),
      ),
    );
  }
}
