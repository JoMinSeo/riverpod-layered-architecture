import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_metrics_score.freezed.dart';

part 'package_metrics_score.g.dart';

@freezed
class PackageMetricsScore with _$PackageMetricsScore {
  factory PackageMetricsScore({
    required int grantedPoints,
    required int maxPoints,
    required int likeCount,
    required double popularityScore,
    required List<String> tags,
  }) = _PackageMetricsScore;

  factory PackageMetricsScore.fromJson(Map<String, Object?> json) =>
      _$PackageMetricsScoreFromJson(json);
}