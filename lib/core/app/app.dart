import 'package:flutter/material.dart';
import 'package:flutter_anime_app/core/app/app_router.dart';
import 'package:flutter_anime_app/core/app/app_theme.dart';
import 'package:flutter_anime_app/core/di/injectable.dart';
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
    return MultiBlocProvider(
      providers: providers,
      child: MaterialApp.router(
        title: 'FlutterAnimeApp',
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter.config(),
      ),
    );
  }
}
