import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_layered_architecture/features/pub/infrastructure/dto/package.dart';
import 'package:riverpod_layered_architecture/features/pub/infrastructure/dto/package_metrics_score.dart';
import 'package:riverpod_layered_architecture/features/pub/infrastructure/dto/pub_package_response.dart';
import 'package:riverpod_layered_architecture/features/pub/infrastructure/dto/pub_search_response.dart';
import 'package:riverpod_layered_architecture/features/pub/infrastructure/dto/search_package.dart';

part 'pub_api_service.g.dart';

@RestApi(baseUrl: 'https://pub.dartlang.org/api')
abstract class PubService {
  factory PubService(Dio dio) = _PubService;

  @GET('/packages')
  Future<HttpResponse<PubPackagesResponse>> getPackages(
    @Query('page') int page,
    @CancelRequest() cancelToken,
  );

  @GET('/search')
  Future<HttpResponse<PubSearchResponse>> searchPackages(
    @Query('page') int page,
    @Query('q') String search,
    @CancelRequest() cancelToken,
  );

  @GET('/packages/{packageName}')
  Future<HttpResponse<Package>> getPackageDetails(
    @Path() String packageName,
    @CancelRequest() cancelToken,
  );

  @GET('/packages/{packageName}/metrics')
  Future<HttpResponse<PackageMetricsScore>> getPackageMetrics(
    @Path() String packageName,
    @CancelRequest() cancelToken,
  );

  @PUT('/account/likes/{packageName}')
  Future<HttpResponse<void>> like(
    @Path() String packageName,
    @CancelRequest() cancelToken,
  );

  @DELETE('/account/likes/{packageName}')
  Future<HttpResponse<void>> unlike(
    @Path() String packageName,
    @CancelRequest() cancelToken,
  );

  @GET('/account/likes')
  Future<HttpResponse<List<String>>> getLikedPackages(
    @CancelRequest() cancelToken,
  );
}
