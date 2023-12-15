import 'package:riverpod_layered_architecture/core_packages.dart';
import 'package:riverpod_layered_architecture/router/router.dart';

class RiverPodApp extends ConsumerWidget {
  const RiverPodApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: '리버팟 샘플 앱',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6831D7),
        ),
      ),
      routerConfig: router.config,
    );
  }
}
