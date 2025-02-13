import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_anime_app/presentation/cubits/anime_categories_cubit.dart';
import 'package:flutter_anime_app/presentation/cubits/bottom_navigation_cubit.dart';
import 'package:flutter_anime_app/presentation/screens/home_screen.dart';
import 'package:flutter_anime_app/presentation/widgets/preview_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Center(child: Text('🤷‍🤷‍🤷‍🤷‍🤷‍🤷‍')),
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
              return Center(
                key: key,
                child: PreviewWidget(),
              );
            }
            return _widgetOptions.elementAt(navigation);
          },
        ),
      ),
      bottomNavigationBar: state is AnimeCategoriesSortedAnimeState ? BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Главная'),
          BottomNavigationBarItem(
              icon: Icon(Icons.error_outline), label: '🤷‍🤷‍🤷‍🤷‍🤷‍🤷‍'),
        ],
        currentIndex: navigation,
        onTap: (index) {
          context.read<BottomNavigationCubit>().setIndex(index);
        },
      ) : null,
    );
  }
}
