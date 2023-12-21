import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pubspec_parse/pubspec_parse.dart';

part 'package_details.freezed.dart';

part 'package_details.g.dart';

@freezed
class PackageDetails with _$PackageDetails {
  const PackageDetails._();

  const factory PackageDetails({
    required String version,
    required Pubspec pubspec,
  }) = _PackageDetails;

  factory PackageDetails.fromJson(Map<String, Object?> json) => _$PackageDetailsFromJson(json);
}
