import 'package:flutter/material.dart';
import 'package:flutter_anime_app/core/app/app_router.dart';
import 'package:flutter_anime_app/core/app/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp.router(
      title: 'FlutterAnimeApp',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
    );
  }
}
