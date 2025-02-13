import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class AnimeApiService {
  final Dio _dio;

  AnimeApiService(this._dio);
}