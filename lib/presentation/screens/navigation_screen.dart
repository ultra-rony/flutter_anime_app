import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_anime_app/presentation/cubits/anime_categories_cubit.dart';
import 'package:flutter_anime_app/presentation/cubits/bottom_navigation_cubit.dart';
import 'package:flutter_anime_app/presentation/widgets/preview_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Center(child: Text('Главная', style: optionStyle)),
    Center(child: Text('🤷‍🤷‍🤷‍🤷‍🤷‍🤷‍', style: optionStyle)),
  ];

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AnimeCategoriesCubit>().state;
    final navigation = context.watch<BottomNavigationCubit>().state;
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        transitionBuilder: (child, animation) => FadeTransition(
          opacity: animation,
          child: ScaleTransition(
            scale: animation,
            child: child,
          ),
        ),
        child: _buildChildBasedOnState(state, navigation,
            key: ValueKey(state.runtimeType)),
      ),
      bottomNavigationBar: state is AnimeCategoriesSortedAnimeState ? BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Главная'),
          BottomNavigationBarItem(
              icon: Icon(Icons.error_outline), label: '🤷‍🤷‍🤷‍🤷‍🤷‍🤷‍'),
        ],
        currentIndex: navigation,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          context.read<BottomNavigationCubit>().setIndex(index);
        },
      ) : null,
    );
  }

  Widget _buildChildBasedOnState(AnimeCategoriesState state, int navigation,
      {required Key key}) {
    if (state is AnimeCategoriesInitialState) {
      return Center(
        key: key,
        child: PreviewWidget(),
      );
    }
    return _widgetOptions.elementAt(navigation);
  }
}
