import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_anime_app/generated/l10n.dart';
import 'package:flutter_anime_app/presentation/cubits/anime_categories_cubit.dart';
import 'package:flutter_anime_app/presentation/cubits/bottom_navigation_cubit.dart';
import 'package:flutter_anime_app/presentation/screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(key: PageStorageKey('home_screen')),
    SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AnimeCategoriesCubit>().state;
    final navigation = context.watch<BottomNavigationCubit>().state;
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Builder(
          builder: (context) {
            if (state is AnimeCategoriesInitialState) {
              return const Center(
                child: CircularProgressIndicator()
              );
            }
            return _widgetOptions.elementAt(navigation);
          },
        ),
      ),
      bottomNavigationBar: state is AnimeCategoriesSortedAnimeState
          ? BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: const Icon(Icons.home),
                  label: S.of(context).bottom_nav_home,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.error_outline),
                  label: S.of(context).bottom_nav_profile,
                ),
              ],
              currentIndex: navigation,
              onTap: (index) {
                context.read<BottomNavigationCubit>().setIndex(index);
              },
            )
          : null,
    );
  }
}
