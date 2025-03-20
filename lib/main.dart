import 'package:flutter/material.dart';
import 'package:flutter_anime_app/core/app/app.dart';
import 'package:flutter_anime_app/core/di/injectable.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const App());
}