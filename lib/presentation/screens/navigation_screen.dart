import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_anime_app/presentation/widgets/preview_widget.dart';

@RoutePage()
class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PreviewWidget(),
      ),
    );
  }
}
