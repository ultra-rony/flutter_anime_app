import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_anime_app/domain/entities/anime_headers_entity.dart';
import 'package:flutter_anime_app/domain/entities/anime_rating_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_anime_app/domain/entities/anime_entity.dart';
import 'package:flutter_anime_app/presentation/widgets/anime_short_widget.dart';

void main() {
  const testAnime = AnimeEntity(
    id: "550",
    year: "2019",
    img: 'https://v5.vost.pw/uploads/posts/2024-12/1735038123_1.jpg?v2',
    genres: 'приключения, фэнтези',
    headers: AnimeHeadersEntity(ru: 'Наруто', en: 'Naruto'),
    ratings: AnimeRatingEntity(rating: '8.5', votes: '98'),
  );

  group('AnimeShortWidget Tests', () {
    testWidgets('should display all elements with valid data', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: AnimeShortWidget(anime: testAnime),
          ),
        ),
      );

      final image =
          tester.widget<CachedNetworkImage>(find.byType(CachedNetworkImage));
      expect(image.imageUrl, testAnime.img);
      expect(find.byType(ClipRRect), findsOneWidget);

      expect(find.text(testAnime.genres ?? ""), findsOneWidget);
      expect(find.text(testAnime.headers?.ru ?? ""), findsOneWidget);

      expect(find.byIcon(Icons.star_border), findsOneWidget);
    });
  });
}
