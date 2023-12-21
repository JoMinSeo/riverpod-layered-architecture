import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_layered_architecture/features/pub/infrastructure/dto/package_details.dart';

part 'package.freezed.dart';

part 'package.g.dart';

@freezed
class Package with _$Package {
  const Package._();

  const factory Package({
    required String name,
    required PackageDetails latest,
  }) = _Package;

  factory Package.fromJson(Map<String, Object?> json) => _$PackageFromJson(json);
}
