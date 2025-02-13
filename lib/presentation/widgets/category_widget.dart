import 'package:flutter/material.dart';
import 'package:flutter_anime_app/domain/entities/category_entity.dart';
import 'package:flutter_anime_app/presentation/widgets/anime_short_widget.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryEntity category;

  const CategoryWidget({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (!category.headers!.hide!) Text(category.headers!.title!),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            // physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: category.data?.length ?? 0,
            itemBuilder: (BuildContext context, int index) {
              return AnimeShortWidget(anime: category.data![index]);
            },
          ),
        )
      ],
    );
  }
}
