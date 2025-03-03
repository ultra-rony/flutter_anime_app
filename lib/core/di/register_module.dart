import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

@module
abstract class RegisterModule {
  @injectable
  Logger get logger => Logger();

  @injectable
  Dio get dio => Dio();

  @preResolve
  Future<Database> get database async =>
      openDatabase(join(await getDatabasesPath(), 'anime.db'),
          onCreate: (db, version) async {
        await db.execute('''
        CREATE TABLE anime (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          year INTEGER,
          img TEXT,
          title_en TEXT,
          title_ru TEXT,
          rating TEXT,
          votes TEXT,
          genres TEXT
        )
      ''');
      }, version: 1);
}
