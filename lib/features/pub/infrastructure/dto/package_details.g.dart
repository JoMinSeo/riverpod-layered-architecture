// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageDetailsImpl _$$PackageDetailsImplFromJson(Map<String, dynamic> json) =>
    _$PackageDetailsImpl(
      version: json['version'] as String,
      pubspec: Pubspec.fromJson(json['pubspec'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PackageDetailsImplToJson(
        _$PackageDetailsImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'pubspec': instance.pubspec,
    };
