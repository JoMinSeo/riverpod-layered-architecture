import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_layered_architecture/features/pub/application/pub_usecase.dart';
import 'package:riverpod_layered_architecture/features/pub/infrastructure/dto/package.dart';

part 'pub_state.g.dart';

extension CancelTokenX on Ref {
  CancelToken cancelToken() {
    final cancelToken = CancelToken();
    onDispose(cancelToken.cancel);
    return cancelToken;
  }
}

@riverpod
Future<List<Package>> fetchPackages(FetchPackagesRef ref, {required int page, String search = ''}) async {
  assert(page > 0, 'page offset starts at 1');
  final cancelToken = ref.cancelToken();

  if (search.isEmpty) {
    return ref.watch(pubUsecaseProvider).getPackages(page: page, cancelToken: cancelToken);
  }

  // Debouncing searches by delaying the request.
  // If the search was cancelled during this delay, the network request will
  // not be performed.
  await Future<void>.delayed(const Duration(milliseconds: 250));
  if (cancelToken.isCancelled) {
    throw Exception('cancelled');
  }

  final searchedPackages =
      await ref.watch(pubUsecaseProvider).searchPackages(page: page, search: search, cancelToken: cancelToken);

  return Future.wait([
    // for (final package in searchedPackages)
    //   ref.watch(
    //     FetchPackageDetailsProvider(packageName: package.package).future,
    //   ),
  ]);
}
