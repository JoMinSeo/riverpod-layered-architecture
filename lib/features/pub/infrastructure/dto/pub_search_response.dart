import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_layered_architecture/features/pub/infrastructure/dto/search_package.dart';

part 'pub_search_response.freezed.dart';

part 'pub_search_response.g.dart';

@freezed
class PubSearchResponse with _$PubSearchResponse {
  factory PubSearchResponse({
    required List<SearchPackage> packages,
  }) = _PubSearchResponse;

  factory PubSearchResponse.fromJson(Map<String, Object?> json) => _$PubSearchResponseFromJson(json);
}
