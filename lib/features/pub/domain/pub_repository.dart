import 'package:dio/dio.dart';
import 'package:riverpod_layered_architecture/features/pub/infrastructure/dto/package.dart';
import 'package:riverpod_layered_architecture/features/pub/infrastructure/dto/package_metrics_score.dart';
import 'package:riverpod_layered_architecture/features/pub/infrastructure/dto/search_package.dart';

abstract interface class PubRepository {
  Future<List<Package>> getPackages(int page, CancelToken? cancelToken);

  Future<List<SearchPackage>> searchPackages(int page, String search, CancelToken? cancelToken);

  Future<Package> getPackageDetails(String packageName, CancelToken? cancelToken);

  Future<PackageMetricsScore> getPackageMetrics(String packageName, CancelToken? cancelToken);

  Future<void> like(String packageName, CancelToken? cancelToken);

  Future<void> unlike(String packageName, CancelToken? cancelToken);

  Future<List<String>> getLikedPackages(CancelToken? cancelToken);
}