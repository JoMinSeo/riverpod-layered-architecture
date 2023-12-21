import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_package.freezed.dart';

part 'search_package.g.dart';

@freezed
class SearchPackage with _$SearchPackage {
  factory SearchPackage({
    required String package,
  }) = _SearchPackage;

  factory SearchPackage.fromJson(Map<String, Object?> json) => _$SearchPackageFromJson(json);
}
