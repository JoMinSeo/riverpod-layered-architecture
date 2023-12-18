import 'package:riverpod_layered_architecture/core_packages.dart';
import 'package:riverpod_layered_architecture/router/router.dart';
import 'package:riverpod_layered_architecture/styles/styles.dart';

class RiverPodApp extends ConsumerWidget {
  const RiverPodApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: '리버팟 샘플 앱',
      theme: $styles.themes.light,
      routerConfig: router.config,
    );
  }
}
