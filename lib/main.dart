import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_anime_app/core/app/app.dart';
import 'package:flutter_anime_app/core/di/injectable.dart';
import 'package:flutter_anime_app/core/utils/constants.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  AppMetrica.runZoneGuarded(() async {
    await dotenv.load(fileName: ".env");
    WidgetsFlutterBinding.ensureInitialized();
    await configureInjection();
    await AppMetrica.activate(AppMetricaConfig(Constants.appMetricaApiKey!, logs: true));
    // OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
    // OneSignal.initialize(Constants.oneSignal!);
    // OneSignal.Notifications.requestPermission(true);
    AppMetrica.reportEvent('opening_the_application');
    runApp(const App());
  });
}