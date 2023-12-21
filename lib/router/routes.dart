import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:riverpod_layered_architecture/presentation/pages/home/home_page.dart';
import 'package:riverpod_layered_architecture/presentation/pages/search/search_page.dart';

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

@TypedGoRoute<SearchRoute>(path: SearchRoute.path)
class SearchRoute extends GoRouteData {
  const SearchRoute();

  static const path = '/search';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SearchPage();
  }
}
