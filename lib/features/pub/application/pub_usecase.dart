import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_layered_architecture/features/pub/domain/data_provider.dart';
import 'package:riverpod_layered_architecture/features/pub/domain/pub_repository.dart';
import 'package:riverpod_layered_architecture/features/pub/infrastructure/dto/package.dart';
import 'package:riverpod_layered_architecture/features/pub/infrastructure/dto/package_metrics_score.dart';
import 'package:riverpod_layered_architecture/features/pub/infrastructure/dto/search_package.dart';

final pubUsecaseProvider = Provider<PubUsecase>((ref) {
  final repository = ref.watch(pubRepositoryProvider);

  return PubUsecase(repository);
});

class PubUsecase {
  PubUsecase(this.repository);

  final PubRepository repository;

  Future<List<Package>> getPackages({
    required int page,
    CancelToken? cancelToken,
  }) {
    return repository.getPackages(page, cancelToken);
  }

  Future<List<SearchPackage>> searchPackages({
    required int page,
    required String search,
    CancelToken? cancelToken,
  }) {
    return repository.searchPackages(page, search, cancelToken);
  }

  Future<Package> getPackageDetails(String packageName, CancelToken? cancelToken) {
    return repository.getPackageDetails(packageName, cancelToken);
  }

  Future<PackageMetricsScore> getPackageMetrics(String packageName, CancelToken? cancelToken) {
    return repository.getPackageMetrics(packageName, cancelToken);
  }

  Future<void> like(String packageName, CancelToken? cancelToken) {
    return repository.like(packageName, cancelToken);
  }

  Future<void> unlike(String packageName, CancelToken? cancelToken) {
    return repository.unlike(packageName, cancelToken);
  }

  Future<List<String>> getLikedPackages(CancelToken? cancelToken) {
    return repository.getLikedPackages(cancelToken);
  }
}
