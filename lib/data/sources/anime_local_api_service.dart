import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

@injectable
class AnimeLocalApiService {
  final Database _database;

  AnimeLocalApiService(this._database);

  Future insertLocalAnime(Map<String, dynamic> row) async {
    await _database.insert(
      'anime',
      row,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Map<String, dynamic>>> getLocalAnime() async {
    return await _database.query('anime');
  }
}
