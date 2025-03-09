import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constants {
  static const String baseUrl = "https://api.rony.fun/";
  static const Duration previewAnimatedDuration = Duration(seconds: 2);

  static String? appMetricaApiKey = dotenv.env['APP_METRICA_KEY'] ?? "";
}