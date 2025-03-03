// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `FlutterAnimeApp`
  String get app_name {
    return Intl.message(
      'FlutterAnimeApp',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get bottom_nav_home {
    return Intl.message('Home', name: 'bottom_nav_home', desc: '', args: []);
  }

  /// `Profile`
  String get bottom_nav_profile {
    return Intl.message(
      'Profile',
      name: 'bottom_nav_profile',
      desc: '',
      args: [],
    );
  }

  /// `Rating`
  String get rating_text {
    return Intl.message('Rating', name: 'rating_text', desc: '', args: []);
  }

  /// `Episode`
  String get episode_text {
    return Intl.message('Episode', name: 'episode_text', desc: '', args: []);
  }

  /// `Type`
  String get type_text {
    return Intl.message('Type', name: 'type_text', desc: '', args: []);
  }

  /// `Producer`
  String get producer_text {
    return Intl.message('Producer', name: 'producer_text', desc: '', args: []);
  }

  /// `Oops!`
  String get error_access_text {
    return Intl.message('Oops!', name: 'error_access_text', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
