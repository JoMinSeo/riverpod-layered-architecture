import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_layered_architecture/presentation/riverpod_app.dart';

void main() {
  runApp(
    const ProviderScope(
      child: RiverPodApp(),
    ),
  );
}
