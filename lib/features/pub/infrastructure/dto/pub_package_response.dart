import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_layered_architecture/features/pub/infrastructure/dto/package.dart';

part 'pub_package_response.freezed.dart';

part 'pub_package_response.g.dart';

@freezed
class PubPackagesResponse with _$PubPackagesResponse {
  factory PubPackagesResponse({
    required List<Package> packages,
  }) = _PubPackagesResponse;

  factory PubPackagesResponse.fromJson(Map<String, Object?> json) => _$PubPackagesResponseFromJson(json);
}
