import 'package:auto_route/auto_route.dart';

import 'app_routers.gr.dart';

@AutoRouterConfig()
class AppRouters extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: NavigationRoute.page, initial: true),
    AutoRoute(page: ChooseRoute.page),
  ];
}
