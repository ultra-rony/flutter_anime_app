// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter_anime_app/presentation/screens/choose_screen.dart'
    as _i1;
import 'package:flutter_anime_app/presentation/screens/navigation_screen.dart'
    as _i2;

/// generated route for
/// [_i1.ChooseScreen]
class ChooseRoute extends _i3.PageRouteInfo<void> {
  const ChooseRoute({List<_i3.PageRouteInfo>? children})
    : super(ChooseRoute.name, initialChildren: children);

  static const String name = 'ChooseRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.ChooseScreen();
    },
  );
}

/// generated route for
/// [_i2.NavigationScreen]
class NavigationRoute extends _i3.PageRouteInfo<void> {
  const NavigationRoute({List<_i3.PageRouteInfo>? children})
    : super(NavigationRoute.name, initialChildren: children);

  static const String name = 'NavigationRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.NavigationScreen();
    },
  );
}
