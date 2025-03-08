import 'package:flutter/material.dart';
import 'package:flutter_anime_app/generated/l10n.dart';
import 'package:flutter_anime_app/presentation/cubits/anime_cubit.dart';
import 'package:flutter_anime_app/presentation/widgets/align_transition_widget.dart';
import 'package:flutter_anime_app/presentation/widgets/category_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.read<AnimeCubit>().state;
    final size = MediaQuery.of(context).size;
    return Builder(builder: (context) {
      if (state is AnimeSortedAnimeState) {
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: size.height * 0.2,
                child: const AlignTransitionWidget(),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return CategoryWidget(category: state.categories[index]);
                },
                childCount: state.categories.length,
              ),
            ),
          ],
        );
      }
      return Center(
        child: Text(S.of(context).error_access_text),
      );
    });
  }
}
