import 'package:dio/dio.dart';
import 'package:riverpod_layered_architecture/features/app_exception.dart';
import 'package:riverpod_layered_architecture/features/pub/domain/pub_repository.dart';
import 'package:riverpod_layered_architecture/features/pub/domain/service/pub_api_service.dart';
import 'package:riverpod_layered_architecture/features/pub/infrastructure/dto/package.dart';
import 'package:riverpod_layered_architecture/features/pub/infrastructure/dto/package_metrics_score.dart';
import 'package:riverpod_layered_architecture/features/pub/infrastructure/dto/search_package.dart';

class PubRepositoryImpl implements PubRepository {
  final PubService _pubService;

  PubRepositoryImpl(this._pubService);

  @override
  Future<List<Package>> getPackages(int page, CancelToken? cancelToken) async {
    try {
      final httpResponse = await _pubService.getPackages(page, cancelToken);

      if(httpResponse.response.statusCode == 200) {
        return httpResponse.data.packages;
      } else {
        throw const AppException('failed to getPackages()');
      }
    } on DioException catch(e) {
      throw AppException(e.toString());
    }
  }

  @override
  Future<List<SearchPackage>> searchPackages(int page, String search, CancelToken? cancelToken) async {
    try {
      final httpResponse = await _pubService.searchPackages(page, search, cancelToken);

      if(httpResponse.response.statusCode == 200) {
        return httpResponse.data.packages;
      } else {
        throw const AppException('failed to searchPackages()');
      }
    } on DioException catch(e) {
      throw AppException(e.toString());
    }
  }

  @override
  Future<Package> getPackageDetails(String packageName, CancelToken? cancelToken) async {
    try {
      final httpResponse = await _pubService.getPackageDetails(packageName, cancelToken);

      if(httpResponse.response.statusCode == 200) {
        return httpResponse.data;
      } else {
        throw const AppException('failed to getPackageDetails()');
      }
    } on DioException catch(e) {
      throw AppException(e.toString());
    }
  }

  @override
  Future<PackageMetricsScore> getPackageMetrics(String packageName, CancelToken? cancelToken) async {
    try {
      final httpResponse = await _pubService.getPackageMetrics(packageName, cancelToken);

      if(httpResponse.response.statusCode == 200) {
        return httpResponse.data;
      } else {
        throw const AppException('failed to getPackageMetrics()');
      }
    } on DioException catch(e) {
      throw AppException(e.toString());
    }
  }

  @override
  Future<void> like(String packageName, CancelToken? cancelToken) async {
    try {
      final httpResponse = await _pubService.like(packageName, cancelToken);

      if(httpResponse.response.statusCode == 200) {
        return httpResponse.data;
      } else {
        throw const AppException('failed to like()');
      }
    } on DioException catch(e) {
      throw AppException(e.toString());
    }
  }

  @override
  Future<void> unlike(String packageName, CancelToken? cancelToken) async {
    try {
      final httpResponse = await _pubService.unlike(packageName, cancelToken);

      if(httpResponse.response.statusCode == 200) {
        return httpResponse.data;
      } else {
        throw const AppException('failed to unlike()');
      }
    } on DioException catch(e) {
      throw AppException(e.toString());
    }
  }

  @override
  Future<List<String>> getLikedPackages(CancelToken? cancelToken) async {
    try {
      final httpResponse = await _pubService.getLikedPackages(cancelToken);

      if(httpResponse.response.statusCode == 200) {
        return httpResponse.data;
      } else {
        throw const AppException('failed to getLikedPackages()');
      }
    } on DioException catch(e) {
      throw AppException(e.toString());
    }
  }
}
