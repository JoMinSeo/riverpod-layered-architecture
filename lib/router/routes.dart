import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:riverpod_layered_architecture/presentation/pages/home/home_page.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(path: HomeRoute.path)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}
