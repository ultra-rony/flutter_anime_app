import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_anime_app/domain/entities/anime_entity.dart';

class AnimeShortWidget extends StatelessWidget {
  final AnimeEntity anime;

  const AnimeShortWidget({
    super.key,
    required this.anime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          SizedBox(
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: CachedNetworkImage(
                imageUrl: anime.img ?? "",
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  anime.genres ?? "",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  anime.headers?.ru ?? "",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Theme.of(context).primaryColor,
                    ),
                    SizedBox(width: 5),
                    Text(
                      anime.ratings?.rating ?? "0",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "(${anime.ratings?.votes ?? "0"})",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
