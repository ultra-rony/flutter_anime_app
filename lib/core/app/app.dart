import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_anime_app/core/app/app_router.dart';
import 'package:flutter_anime_app/core/app/app_theme.dart';
import 'package:flutter_anime_app/core/di/injectable.dart';
import 'package:flutter_anime_app/generated/l10n.dart';
import 'package:flutter_anime_app/presentation/cubits/anime_categories_cubit.dart';
import 'package:flutter_anime_app/presentation/cubits/anime_long_cubit.dart';
import 'package:flutter_anime_app/presentation/cubits/bottom_navigation_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final providers = [
  BlocProvider<AnimeCategoriesCubit>(create: (context) => getIt<AnimeCategoriesCubit>()..onSortedAnime()),
  BlocProvider<BottomNavigationCubit>(create: (context) => getIt<BottomNavigationCubit>()),
  BlocProvider<AnimeLongCubit>(create: (context) => getIt<AnimeLongCubit>()),
];

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
      providers: providers,
      child: MaterialApp.router(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter.config(),
      ),
    );
  }
}
