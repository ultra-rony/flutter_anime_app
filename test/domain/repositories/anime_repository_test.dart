import 'package:flutter_anime_app/core/network/network_data_state.dart';
import 'package:flutter_anime_app/domain/entities/anime_entity.dart';
import 'package:flutter_anime_app/domain/entities/anime_headers_entity.dart';
import 'package:flutter_anime_app/domain/entities/anime_long_entity.dart';
import 'package:flutter_anime_app/domain/entities/category_entity.dart';
import 'package:flutter_anime_app/domain/repositories/anime_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateMocks([AnimeRepository])
import 'anime_repository_test.mocks.dart';

void main() {
  late MockAnimeRepository mockRepository;
  final testAnimeId = '123';
  final testCategory = const CategoryEntity(orientation: "horizontal", data: [
    AnimeEntity(
        headers: AnimeHeadersEntity(
      en: "Naruto",
      ru: "Наруто",
    )),
  ]);
  final testAnime = const AnimeLongEntity(
    id: '123',
    headers: AnimeHeadersEntity(
      en: "Naruto",
      ru: "Наруто",
    ),
  );
  final testLocalAnime = {'id': 1, 'title': 'Local Anime'};

  setUp(() {
    mockRepository = MockAnimeRepository();
  });

  group('getSortedAnime', () {
    test('should return Success state with categories', () async {
      when(mockRepository.getSortedAnime()).thenAnswer(
        (_) async => NetworkDataSuccess<List<CategoryEntity>>([testCategory]),
      );

      final result = await mockRepository.getSortedAnime();

      expect(result, isA<NetworkDataSuccess<List<CategoryEntity>>>());
      expect(result.data?.first.orientation, 'horizontal');
    });

    test('should return Error state', () async {
      when(mockRepository.getSortedAnime()).thenAnswer(
        (_) async =>
            const NetworkDataFailed<List<CategoryEntity>>("server_error"),
      );

      final result = await mockRepository.getSortedAnime();

      expect(result, isA<NetworkDataFailed<List<CategoryEntity>>>());
      expect(result.error, 'server_error');
    });
  });

  group('getAnime', () {
    test('should return anime details', () async {
      when(mockRepository.getAnime(testAnimeId)).thenAnswer(
        (_) async => NetworkDataSuccess<AnimeLongEntity>(testAnime),
      );

      final result = await mockRepository.getAnime(testAnimeId);

      expect(result, isA<NetworkDataSuccess<AnimeLongEntity>>());
      expect(result.data?.headers?.ru, 'Наруто');
    });

    test('should handle invalid anime ID', () async {
      when(mockRepository.getAnime('invalid')).thenAnswer(
        (_) async => const NetworkDataFailed<AnimeLongEntity>('not_found'),
      );

      final result = await mockRepository.getAnime('invalid');

      expect(result, isA<NetworkDataFailed<AnimeLongEntity>>());
      expect(result.error, 'not_found');
    });
  });

  group('Local Anime Operations', () {
    test('getLocalAnime should return list of maps', () async {
      when(mockRepository.getLocalAnime()).thenAnswer(
        (_) async => [testLocalAnime],
      );

      final result = await mockRepository.getLocalAnime();

      expect(result, isA<List<Map<String, dynamic>>>());
      expect(result.first['title'], 'Local Anime');
    });

    test('insertLocalAnime should store data', () async {
      when(mockRepository.insertLocalAnime(any)).thenAnswer((_) async => {});

      await mockRepository.insertLocalAnime(testLocalAnime);

      verify(mockRepository.insertLocalAnime(testLocalAnime)).called(1);
    });

    test('should handle empty local storage', () async {
      when(mockRepository.getLocalAnime()).thenAnswer((_) async => []);

      final result = await mockRepository.getLocalAnime();

      expect(result, isEmpty);
    });
  });
}
