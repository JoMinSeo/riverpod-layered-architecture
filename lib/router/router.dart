import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_layered_architecture/router/app_router_interceptor.dart';
import 'package:riverpod_layered_architecture/router/router_notifier.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_layered_architecture/router/routes.dart';

part 'router.g.dart';

final _key = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

@Riverpod(dependencies: [RouterNotifier])
AppRouter router(RouterRef ref) {
  final notifier = ref.watch(routerNotifierProvider.notifier);

  return AppRouter(notifier, '/', []);
}

class AppRouter {
  final Listenable _notifier;
  final String _initialLocation;
  final List<AppRouterInterceptor> _interceptors;

  AppRouter(this._notifier, this._initialLocation, this._interceptors);

  late final GoRouter config = GoRouter(
    navigatorKey: _key,
    initialLocation: _initialLocation,
    refreshListenable: _notifier,
    redirect: (context, state) async {
      for (AppRouterInterceptor interceptor in _interceptors) {
        final String? result = await interceptor.canGo(context, state);
        if (result != null) return result;
      }
      return null;
    },
    debugLogDiagnostics: true,
    routes: $appRoutes,
  );
}
