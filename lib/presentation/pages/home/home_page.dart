import 'package:flutter/material.dart';
import 'package:riverpod_layered_architecture/core_packages.dart';
import 'package:riverpod_layered_architecture/router/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () => const SearchRoute().go(context),
            child: const Text('검색 화면'),
          )
        ),
      ),
    );
  }
}
