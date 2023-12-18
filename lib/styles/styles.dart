import 'package:riverpod_layered_architecture/styles/theme.dart';

final $styles = AppStyle();

class AppStyle {
  final AppColors colors = AppColors();

  final AppThemes themes = AppThemes();

  late final insets = _Insets();

  late final times = _Times();
}

class _Times {
  final Duration fast = const Duration(milliseconds: 250);
  final Duration low = const Duration(milliseconds: 400);
  final Duration medium = const Duration(milliseconds: 600);
  final Duration slow = const Duration(milliseconds: 1000);
  final Duration verySlow = const Duration(milliseconds: 2000);
}

class _Insets {
  late final double xxs = 4;
  late final double xs = 8;
  late final double s = 10;
  late final double m = 16;
  late final double l = 20;
  late final double xl = 24;
  late final double xxl = 56;
}