import 'package:dio/dio.dart';
import 'package:flutter_anime_app/core/utils/constants.dart';
import 'package:injectable/injectable.dart';

@injectable
class AnimeApiService {
  final Dio _dio;

  AnimeApiService(this._dio);

  Future<Response> getSortedAnime() async {
    _dio.options.headers['Content-Type'] = 'application/json';
    return await _dio.get('${Constants.baseUrl}anime');
  }

  Future<Response> getAnime(String animeId) async {
    _dio.options.headers['Content-Type'] = 'application/json';
    return await _dio.get('${Constants.baseUrl}anime/show', data: {
      'anime_id': animeId,
    });
  }
}
