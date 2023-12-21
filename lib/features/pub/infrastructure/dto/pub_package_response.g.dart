// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pub_package_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PubPackagesResponseImpl _$$PubPackagesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PubPackagesResponseImpl(
      packages: (json['packages'] as List<dynamic>)
          .map((e) => Package.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PubPackagesResponseImplToJson(
        _$PubPackagesResponseImpl instance) =>
    <String, dynamic>{
      'packages': instance.packages,
    };
