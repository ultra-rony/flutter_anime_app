import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_anime_app/core/network/network_data_state.dart';
import 'package:flutter_anime_app/data/sources/anime_api_service.dart';
import 'package:flutter_anime_app/data/sources/anime_local_api_service.dart';
import 'package:flutter_anime_app/domain/entities/anime_long_entity.dart';
import 'package:flutter_anime_app/domain/entities/category_entity.dart';
import 'package:flutter_anime_app/domain/repositories/anime_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: AnimeRepository)
class AnimeRepositoryImpl extends AnimeRepository {
  final Logger _logger;
  final AnimeApiService _animeApiService;
  final AnimeLocalApiService _animeLocalApiService;

  AnimeRepositoryImpl(
    this._animeApiService,
    this._logger,
    this._animeLocalApiService,
  );

  @override
  Future<NetworkDataState<List<CategoryEntity>>> getSortedAnime() async {
    try {
      final httpResponse = await _animeApiService.getSortedAnime();
      if (httpResponse.statusCode == 200) {
        return NetworkDataSuccess(json
            .decode(httpResponse.data)['sort_categories']
            .map<CategoryEntity>((item) => CategoryEntity.fromJson(item))
            .toList());
      }
      return NetworkDataFailed(DioException(
        error: httpResponse.statusMessage,
        response: httpResponse,
        requestOptions: httpResponse.requestOptions,
      ).toString());
    } on DioException catch (e) {
      _logger.e("Error while fetching anime", error: e);
      return NetworkDataFailed(e.toString());
    }
  }

  @override
  Future<NetworkDataState<AnimeLongEntity>> getAnime(String animeId) async {
    try {
      final httpResponse = await _animeApiService.getAnime(animeId);
      if (httpResponse.statusCode == 200) {
        return NetworkDataSuccess(
            AnimeLongEntity.fromJson(json.decode(httpResponse.data)['anime']));
      }
      return NetworkDataFailed(DioException(
        error: httpResponse.statusMessage,
        response: httpResponse,
        requestOptions: httpResponse.requestOptions,
      ).toString());
    } on DioException catch (e) {
      _logger.e("Error while fetching anime", error: e);
      return NetworkDataFailed(e.toString());
    }
  }

  @override
  Future<List<Map<String, dynamic>>> getLocalAnime() async {
    return await _animeLocalApiService.getLocalAnime();
  }

  @override
  Future<void> insertLocalAnime(Map<String, dynamic> row) async {
    await _animeLocalApiService.insertLocalAnime(row);
  }
}
