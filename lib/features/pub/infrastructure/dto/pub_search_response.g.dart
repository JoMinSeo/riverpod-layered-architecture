// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pub_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PubSearchResponseImpl _$$PubSearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PubSearchResponseImpl(
      packages: (json['packages'] as List<dynamic>)
          .map((e) => SearchPackage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PubSearchResponseImplToJson(
        _$PubSearchResponseImpl instance) =>
    <String, dynamic>{
      'packages': instance.packages,
    };
