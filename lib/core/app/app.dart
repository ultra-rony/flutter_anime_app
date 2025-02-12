import 'package:flutter/material.dart';
import 'package:flutter_anime_app/core/app/app_router.dart';
import 'package:flutter_anime_app/core/app/app_theme.dart';
import 'package:flutter_anime_app/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

final globalKey = GlobalKey();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp.router(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const <Locale>[
        Locale.fromSubtags(languageCode: 'ru'),
      ],
      key: globalKey,
      title: 'FlutterAnimeApp',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
    );
  }
}
