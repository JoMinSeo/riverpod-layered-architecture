import 'dart:async';

import 'package:riverpod_layered_architecture/core_packages.dart';

abstract class AppRouterInterceptor  {
  FutureOr<String?> canGo(BuildContext context, GoRouterState routerState);
}