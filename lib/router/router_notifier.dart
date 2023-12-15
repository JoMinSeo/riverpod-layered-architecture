import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:riverpod_layered_architecture/core_packages.dart';

part 'router_notifier.g.dart';

// AuthNotifier
@Riverpod(dependencies: [])
class RouterNotifier extends _$RouterNotifier implements Listenable {
  VoidCallback? routerListener;

  // AuthState authState = const Authenticating();

  @override
  FutureOr<void> build() async {
    // authState = await ref.watch(authNotifierProvider);

    // ref.listenSelf((_, __) {
    //   if (state.isLoading) return;
    //   routerListener?.call();
    // });
  }

  @override
  void addListener(VoidCallback listener) {
    routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    routerListener = null;
  }
}