import 'package:flutter/material.dart';
import 'package:flutter_anime_app/presentation/cubits/anime_categories_cubit.dart';
import 'package:flutter_anime_app/presentation/widgets/align_transition_widget.dart';
import 'package:flutter_anime_app/presentation/widgets/category_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.read<AnimeCategoriesCubit>().state;
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: Builder(builder: (context) {
        if (state is AnimeCategoriesSortedAnimeState) {
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.2,
                  child: AlignTransitionWidget(),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: state.categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CategoryWidget(category: state.categories[index]);
                  },
                ),
              ],
            )
          );
        }
        return Center(
          child: Text("Упс!!"),
        );
      }),
    );
  }
}
