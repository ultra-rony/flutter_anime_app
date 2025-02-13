import 'package:flutter/material.dart';
import 'package:flutter_anime_app/presentation/cubits/anime_categories_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.read<AnimeCategoriesCubit>().state;
    return Expanded(
      child: Builder(
        builder: (context) {
          if (state is AnimeCategoriesSortedAnimeState) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: state.categories.length,
              itemBuilder: (BuildContext context, int index) {
                return Text( state.categories[index].headers!.title!);
              },
            );
          }
          return Center(
            child: Text("Упс!!"),
          );
        }
      ),
    );
  }
}
